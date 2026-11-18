// Max legacy js (ES5). File operations and recording lifecycle only.
// Audio recording, granular synthesis and gain are performed by Max objects.
autowatch = 1;
inlets = 1;
outlets = 5; // capture commands; slots 1–4

var SLOT_COUNT = 4;
var MAX_MS = 10000;
var CAPTURE = 0;
var allowed = false;
var recordOn = false;
var experienceOn = false;
var sessionOpen = false;
var capturing = false;
var saved = false;
var syncPosition = 0;
var recordedMs = 0;
var speechRange = null;

// ---- Output helpers -------------------------------------------------------
function report(message) { post('[archive] ' + message + '\n'); }
function captureCommand() { outlet(CAPTURE, arrayfromargs(arguments)); }
function clearSlots() {
    for (var i = 0; i < SLOT_COUNT; i++) outlet(i + 1, ['length', 0.0]);
}

// ---- Files ---------------------------------------------------------------
function recordingsFolder() {
    var p = this.patcher;
    while (p.parentpatcher) p = p.parentpatcher;
    var path = String(p.filepath || '').replace(/\\/g, '/');
    var slash = path.lastIndexOf('/');
    if (slash < 0) throw new Error('Save the main patch first.');
    return path.substring(0, slash + 1) + 'recordings/';
}
function scanFiles() {
    var directory = recordingsFolder.call(this);
    var folder = new Folder(directory);
    var files = [];
    var nextNumber = 1;
    try {
        while (!folder.end) {
            var name = String(folder.filename || '');
            var match = /^speech_(\d+)\.wav$/i.exec(name);
            if (match) {
                files.push(directory + name);
                nextNumber = Math.max(nextNumber, Number(match[1]) + 1);
            }
            folder.next();
        }
    } finally { folder.close(); }
    return { directory: directory, files: files, nextNumber: nextNumber };
}
function shuffle(files) {
    for (var i = files.length - 1; i > 0; i--) {
        var j = Math.floor(Math.random() * (i + 1));
        var temporary = files[i];
        files[i] = files[j];
        files[j] = temporary;
    }
}
function fourCC(bytes) {
    return String.fromCharCode(bytes[0], bytes[1], bytes[2], bytes[3]);
}
function uint32LE(bytes, offset) {
    return (bytes[offset] & 255) + (bytes[offset + 1] & 255) * 256 +
        (bytes[offset + 2] & 255) * 65536 + (bytes[offset + 3] & 255) * 16777216;
}
// Read only the RIFF metadata, not the audio samples.
function waveLength(path) {
    var file = new File(path, 'read');
    if (!file.isopen) return 0;
    try {
        var header = file.readbytes(12);
        if (header.length !== 12 || fourCC(header) !== 'RIFF' ||
            fourCC(header.slice(8, 12)) !== 'WAVE') return 0;
        var bytesPerSecond = 0;
        var audioBytes = 0;
        while (file.position + 8 <= file.eof) {
            var chunk = file.readbytes(8);
            var id = fourCC(chunk);
            var size = uint32LE(chunk, 4);
            var start = file.position;
            if (start + size > file.eof) return 0;
            if (id === 'fmt ' && size >= 16) {
                bytesPerSecond = uint32LE(file.readbytes(16), 8);
            } else if (id === 'data') {
                audioBytes = size;
            }
            if (bytesPerSecond > 0 && audioBytes > 0) {
                return 1000 * audioBytes / bytesPerSecond;
            }
            file.position = start + size + (size % 2);
        }
        return 0;
    } finally { file.close(); }
}
function selectFiles() {
    clearSlots();
    try {
        var files = scanFiles.call(this).files;
        shuffle(files);
        var slot = 0;
        for (var i = 0; i < files.length && slot < SLOT_COUNT; i++) {
            var ms = waveLength(files[i]);
            if (!(ms > 0)) continue;
            outlet(slot + 1, ['readtrack', 'audio', files[i]]);
            outlet(slot + 1, ['length', ms]);
            report('slot ' + (slot + 1) + ': ' + files[i]);
            slot++;
        }
        report('selected ' + slot + ' files');
    } catch (error) { report('selection failed: ' + error.message); }
}
function nextFilename() {
    var scan = scanFiles.call(this);
    var number = String(scan.nextNumber);
    while (number.length < 4) number = '0' + number;
    return scan.directory + 'speech_' + number + '.wav';
}

// ---- Capture -------------------------------------------------------------
function startCapture() {
    if (!allowed) return;
    captureCommand('buffer', 'setsize', MAX_MS, 1);
    captureCommand('buffer', 'clear');
    captureCommand('record', 'reset');
    syncPosition = 0;
    capturing = true;
    captureCommand('record', 1);
}
function stopCapture() {
    if (!capturing) return;
    captureCommand('snapshot', 'bang'); // synchronous return via sync()
    captureCommand('record', 0);
    capturing = false;
    recordedMs = Math.min(MAX_MS, Math.max(0, syncPosition * MAX_MS));
}
function discardCapture() {
    stopCapture();
    recordedMs = 0;
    speechRange = null;
    saved = false;
    captureCommand('buffer', 'clear');
}
function saveCapture() {
    if (!allowed || saved || recordedMs < 20) return;
    try {
        var path = nextFilename.call(this);
        var start = 0;
        var end = recordedMs;
        if (speechRange) {
            var a = Math.max(0, speechRange[0]);
            var b = Math.min(recordedMs, speechRange[1]);
            if (b - a >= 20) { start = a; end = b; }
        }
        captureCommand('buffer', 'crop', start, end);
        captureCommand('buffer', 'writewave', path);
        saved = true;
        report('writewave requested: ' + path);
    } catch (error) { report('save failed: ' + error.message); }
}

// ---- Messages from Max ---------------------------------------------------
function consent(value) {
    allowed = Number(value) === 1;
    if (!allowed) discardCapture();
}
function record(value) {
    var on = Number(value) === 1;
    if (on === recordOn) return;
    recordOn = on;
    if (!on) { stopCapture(); return; }
    if (!sessionOpen) {
        selectFiles.call(this); // before the current take can be saved
        sessionOpen = true;
    }
    discardCapture(); // retries replace the previous take
    startCapture();
}
function sync(value) {
    syncPosition = Math.max(0, Math.min(1, Number(value) || 0));
}
function speechdur(start, end) {
    if (capturing || recordedMs <= 0) return;
    start = Number(start); end = Number(end);
    if (isFinite(start) && isFinite(end) && end > start) speechRange = [start, end];
}
function experience(value) {
    var on = Number(value) === 1;
    if (on === experienceOn) return;
    experienceOn = on;
    if (on) {
        if (!sessionOpen) { selectFiles.call(this); sessionOpen = true; }
        stopCapture();
        saveCapture.call(this);
    } else {
        reset();
    }
}
function reset() {
    discardCapture();
    allowed = false;
    recordOn = false;
    experienceOn = false;
    sessionOpen = false;
    clearSlots();
}
