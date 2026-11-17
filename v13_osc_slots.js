autowatch = 1;
inlets = 1;
outlets = 4;
// OSCの受信状態・人物IDと3スロットの割当のみ。
var slots = [null,null,null], people = {}, pending = {};
var session = null, frame = -1, lastFrame = -1, heartbeat = 0;
var count = null, ids = null, active = [], inside = null, roommode = null;
var STALE=300, TIMEOUT=800, RELEASE=400;
function now(){return new Date().getTime();}
function num(x){return typeof x==='number' && isFinite(x);}
function send(i){outlet(i,Array.prototype.slice.call(arguments,1));}
function off(i){send(i,'state',0,0,0,0,0,0,0,0,0,0,0,0);}
function release(i,t){var s=slots[i];if(!s||s.until)return;off(i);send(i,'id',-1);s.until=t+RELEASE;}
function reset(t){for(var i=0;i<3;i++)release(i,t);people={};pending={};active=[];count=null;ids=null;inside=null;roommode=null;frame=-1;lastFrame=-1;heartbeat=0;send(3,'inside',0);send(3,'roommode',0);}
function assign(t){var i,j,s;for(i=0;i<3;i++){s=slots[i];if(s&&s.until&&t>=s.until)slots[i]=null;else if(s&&!s.until&&active.indexOf(s.id)<0)release(i,t);}
 for(j=0;j<active.length;j++){var id=active[j],exists=false;for(i=0;i<3;i++)if(slots[i]&&slots[i].id===id){exists=true;break;}if(exists)continue;for(i=0;i<3;i++)if(!slots[i]){slots[i]={id:id,until:0};off(i);send(i,'id',id);break;}}
}
function field(p,k,t){var a=p&&p[k];return a&&t-a.t<=STALE?a.v:null;}
function value(p,k,t){var v=field(p,k,t);return num(v)?v:0;}
function valid(p,f,v,t){return field(p,f,t)===1&&num(field(p,v,t))?1:0;}
function emit(t){for(var i=0;i<3;i++){var s=slots[i];if(!s||s.until)continue;var p=people[s.id];if(field(p,'active',t)!==1){off(i);continue;}
 var pv=field(p,'pos_valid',t)===1&&num(field(p,'x',t))&&num(field(p,'y',t))?1:0;
 send(i,'state',1,value(p,'left/room_az',t),value(p,'left/room_up',t),valid(p,'left/az_valid','left/room_az',t),valid(p,'left/up_valid','left/room_up',t),value(p,'right/room_az',t),value(p,'right/room_up',t),valid(p,'right/az_valid','right/room_az',t),valid(p,'right/up_valid','right/room_up',t),value(p,'x',t),value(p,'y',t),pv);}}
function poll(){var t=now();if(heartbeat&&t-heartbeat>TIMEOUT){reset(t);return;}assign(t);emit(t);}
function commit(id,t){var q=pending[id];if(!q)return;var p=people[id]||{};for(var k in q)if(q.hasOwnProperty(k))p[k]={v:q[k],t:t};people[id]=p;delete pending[id];}
function osc(a,args){var t=now(),v=Number(args[0]);
 if(a==='/tracking/session'){if(num(v)&&v!==session){reset(t);session=v;}return;}
 if(a==='/tracking/frame'){if(!num(v)||v<=lastFrame)return;lastFrame=v;frame=v;count=null;ids=null;inside=null;roommode=null;pending={};return;}
 if(a==='/tracking/v13/frame_end'){if(v!==frame||frame<0)return;heartbeat=t;
 if(count===0||(count!==null&&ids!==null&&count===ids.length)){active=count===0?[]:ids.slice();assign(t);}
 if(inside!==null)send(3,'inside',inside);if(roommode!==null)send(3,'roommode',roommode);
 for(var k in people)if(people.hasOwnProperty(k)&&active.indexOf(Number(k))<0)delete people[k];frame=-1;emit(t);return;}
 if(frame<0)return;
 if(a==='/tracking/active_count'){if(num(v)&&v>=0&&Math.floor(v)===v)count=v;return;}
 if(a==='/tracking/active_ids'){ids=[];for(var i=0;i<args.length;i++){var n=Number(args[i]);if(n>0&&Math.floor(n)===n&&ids.indexOf(n)<0)ids.push(n);}ids.sort(function(a,b){return a-b;});return;}
 if(a==='/tracking/inside_count'){if(num(v))inside=v;return;}
 if(a==='/tracking/mode'){if(num(v))roommode=v;return;}
 var m=/^\/tracking\/person\/([0-9]+)\/(.*)$/.exec(a);if(!m||!num(v))return;var id=Number(m[1]),key=m[2];
 if(key==='frame'){if(v===frame)commit(id,t);return;}if(!pending[id])pending[id]={};pending[id][key]=v;
}
function anything(){var a=messagename;if(a.charAt(0)==='/')osc(a,arrayfromargs(arguments));}
function list(){var a=arrayfromargs(arguments);if(typeof a[0]==='string'&&a[0].charAt(0)==='/')osc(a.shift(),a);}
function loadbang(){for(var i=0;i<3;i++){off(i);send(i,'id',-1);}send(3,'inside',0);send(3,'roommode',0);}
