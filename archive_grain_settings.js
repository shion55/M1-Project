autowatch = 1;
inlets = 2;
outlets = 0;

var settings = new Global("archive_grain_settings");

function loadbang() {
    settings.minimum = 80;
    settings.maximum = 1300;
}

function msg_int(value) { store(value); }
function msg_float(value) { store(value); }

function store(value) {
    value = Math.max(1, Number(value) || 1);
    if (inlet === 0) settings.minimum = value;
    else settings.maximum = value;
}
