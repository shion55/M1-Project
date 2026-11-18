autowatch = 1;
inlets = 2;
outlets = 1;

var settings = new Global("archive_grain_settings");
var running = false;
var safePeriod = 50;
var task = new Task(tick, this);

function msg_int(value) {
    if (inlet === 1) {
        safePeriod = Math.max(1, Number(value) || 50);
        return;
    }
    setRunning(value !== 0);
}

function msg_float(value) {
    msg_int(value);
}

function setRunning(value) {
    if (value === running) return;
    running = value;
    task.cancel();
    if (running) tick();
}

function tick() {
    if (!running) return;
    var minimum = Number(settings.minimum);
    var maximum = Number(settings.maximum);
    if (!isFinite(minimum)) minimum = 80;
    if (!isFinite(maximum)) maximum = 1300;
    var low = Math.max(1, Math.min(minimum, maximum));
    var high = Math.max(low, Math.max(minimum, maximum));
    var duration = low + Math.random() * (high - low);
    messnamed("archiveRandom_dur", duration);
    outlet(0, "bang");
    task.schedule(Math.max(safePeriod, duration * 0.5));
}

function notifydeleted() {
    task.cancel();
}
