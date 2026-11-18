autowatch = 1;
inlets = 1;
outlets = 3;
// OSC解析と人物IDの振り分けのみ。音響処理なし。
var slots = [null, null, null];
var session = null, current = -1, last = -1, heartbeat = 0;
var members = [], count = null, ids = null, pending = {}, received = {};
var timeout = 800, task = null;
function now() { return new Date().getTime(); }
function numeric(v) { return typeof v === 'number' && isFinite(v); }
function integer(v) { return numeric(v) && Math.floor(v) === v; }
function output(i, name, v) { outlet(i, name, v); }
function clearSlot(i) {
    output(i,'active',0);
    for (var j=0;j<4;j++) output(i,['RazValid','RupValid','LazValid','LupValid'][j],0);
    output(i,'id',-1);
    for (var j=0;j<4;j++) output(i,['Raz','Rup','Laz','Lup'][j],0);
    slots[i] = null;
}
function clearFrame() { current=-1; count=null; ids=null; pending={}; received={}; }
function reset() { for (var i=0;i<3;i++) clearSlot(i); members=[]; clearFrame(); heartbeat=0; }
function assign() {
    var i,j;
    for (i=0;i<3;i++) if (slots[i]!==null && members.indexOf(slots[i])<0) clearSlot(i);
    for (j=0;j<members.length;j++) {
        if (slots.indexOf(members[j])>=0) continue;
        i=slots.indexOf(null);
        if(i<0) break;
        slots[i]=members[j]; output(i,'id',members[j]);
    }
}
var fields = [['right/room_az','right/az_valid','Raz'],['right/room_up','right/up_valid','Rup'],['left/room_az','left/az_valid','Laz'],['left/room_up','left/up_valid','Lup']];
function emit() {
    for(var i=0;i<3;i++) {
        if(slots[i]===null) continue;
        var p=received[slots[i]] || {}, enabled=p.active===1;
        // どちらかのパケットが欠けたときはvalid=0。角度は更新しない。
        for(var j=0;j<fields.length;j++) {
            var f=fields[j], ok=enabled && p[f[1]]===1 && numeric(p[f[0]]);
            output(i,f[2]+'Valid',ok?1:0);
            if(ok) output(i,f[2],p[f[0]]);
        }
        output(i,'active',enabled?1:0);
    }
}
function osc(a,args) {
    var v=args[0], i, id, m, key;
    if(a==='/tracking/session') {
        if(integer(v) && v!==session) { reset(); last=-1; session=v; }
        return;
    }
    if(a==='/tracking/frame') {
        if(!integer(v)||v<=last||v===current) return;
        clearFrame(); current=v; return;
    }
    if(current<0) return;
    if(a==='/tracking/active_count') { if(integer(v)&&v>=0) count=v; return; }
    if(a==='/tracking/active_ids') {
        ids=[];
        for(i=0;i<args.length;i++) {
            if(!integer(args[i])||args[i]<=0||ids.indexOf(args[i])>=0) { ids=null; return; }
            ids.push(args[i]);
        }
        ids.sort(function(a,b){return a-b;}); return;
    }
    if(a==='/tracking/v13/frame_end') {
        if(v!==current) return;
        heartbeat=now(); last=current;
        if(count===0) members=[];
        else if(count!==null&&ids!==null&&count===ids.length) members=ids.slice();
        // 明示的なactive=0は解除。present=0だけでは解除しない。
        members=members.filter(function(n){return !received[n]||received[n].active!==0;});
        assign(); emit(); clearFrame(); return;
    }
    m=/^\/tracking\/person\/([0-9]+)\/(.*)$/.exec(a);
    if(!m||!numeric(v)) return;
    id=Number(m[1]); key=m[2]; if(id<=0) return;
    if(key==='frame') { if(v===current&&pending[id]) { received[id]=pending[id]; delete pending[id]; } return; }
    if(key!=='active' && !/^(right|left)\/(room_az|room_up|az_valid|up_valid)$/.test(key)) return;
    if(!pending[id]) pending[id]={}; pending[id][key]=v;
}
function anything() { if(messagename.charAt(0)==='/') osc(messagename,arrayfromargs(arguments)); }
function list() { var a=arrayfromargs(arguments); if(typeof a[0]==='string'&&a[0].charAt(0)==='/') osc(a.shift(),a); }
function watchdog() { if(heartbeat&&now()-heartbeat>timeout) reset(); }
function loadbang() { reset(); last=-1; if(task) task.cancel(); task=new Task(watchdog,this); task.interval=100; task.repeat(); }
function notifydeleted() { if(task) task.cancel(); }
