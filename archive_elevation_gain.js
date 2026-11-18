autowatch = 1;
inlets = 1;
outlets = 1;

var settings = new Global("archive_elevation_settings");

function list() {
    var values = arrayfromargs(arguments);
    var elevation = Math.abs(Number(values[0]) || 0);
    var enabled = Number(values[1]) || 0;
    var fallbackStart = Math.max(0, Number(values[2]) || 0);
    var maximumGain = Math.min(0.25, Math.max(0, Number(values[3]) || 0));
    var start = Number(settings.start);
    var full = Number(settings.full);
    if (!isFinite(start)) start = fallbackStart;
    if (!isFinite(full)) full = 60;
    start = Math.max(0, start);
    full = Math.max(start + 1, full);
    var amount = Math.min(1, Math.max(0, (elevation - start) / (full - start)));
    outlet(0, enabled * maximumGain * amount);
}
