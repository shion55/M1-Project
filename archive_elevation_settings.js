autowatch = 1;
inlets = 2;
outlets = 0;

var settings = new Global("archive_elevation_settings");

function loadbang() {
    settings.start = 10;
    settings.full = 60;
}

function msg_int(value) { store(value); }
function msg_float(value) { store(value); }

function store(value) {
    value = Math.max(0, Number(value) || 0);
    if (inlet === 0) settings.start = value;
    else settings.full = value;
}
