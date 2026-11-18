autowatch = 1;
inlets = 4;
outlets = 2;

var state = [0, 0, 0, 0];

function msg_int(value) {
    state[inlet] = value ? 1 : 0;
    update();
}

function update() {
    var archiveMute = state[0];
    var archiveSolo = state[1];
    var granularMute = state[2];
    var granularSolo = state[3];
    var anySolo = archiveSolo || granularSolo;
    outlet(0, !archiveMute && (!anySolo || archiveSolo) ? 1 : 0);
    outlet(1, !granularMute && (!anySolo || granularSolo) ? 1 : 0);
}

function loadbang() {
    update();
}
