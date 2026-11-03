// AVSeed standalone-compatible melodic generator (Max 9 v8)
// This is a compatible reconstruction. The original two JS files were not embedded
// in the supplied .amxd, so the exact original algorithm cannot be reproduced.
// outlet 0: pitch velocity durationTicks; outlet 1: jsui messages.
inlets = 1;
outlets = 2;

const SCALES = [
  [0,2,4,5,7,9,11],    // Major
  [0,2,3,5,7,8,10],    // Natural Minor
  [0,2,3,5,7,8,11],    // Harmonic Minor
  [0,2,3,5,7,9,11],    // Melodic Minor
  [0,2,3,5,7,9,10],    // Dorian
  [0,1,3,5,7,8,10],    // Phrygian
  [0,2,4,6,7,9,11],    // Lydian
  [0,2,4,5,7,9,10],    // Mixolydian
  [0,1,3,5,6,8,10],    // Locrian
  [0,2,4,7,9],         // Major Pentatonic
  [0,3,5,7,10],        // Minor Pentatonic
  [0,3,5,6,7,10],      // Blues
  [0,2,4,6,8,10],      // Whole Tone
  [0,1,3,4,6,7,9,10], // Diminished H-W
  [0,2,3,5,6,8,9,11], // Diminished W-H
  [0,2,3,7,8],         // Hirajoshi
  [0,1,5,7,10],        // In Sen
  [0,1,2,3,4,5,6,7,8,9,10,11] // Chromatic
];
const DURATIONS = [30,60,120,240,480,960,1920,80,160,320,360,720];
const DEFAULTS = {
  center:60, range:16, smooth:58, density:68, rotation:0, accent:35,
  voices:3, spread:7, independence:75, chordtone:45,
  mutation:22, repeat:15, velocity:90, velrand:12, seed:42,
  scale:0, contour:0, rhythmmode:0, probshape:0,
  chordmode:1, progression:1, durmode:0, freeze:0
};
let cfg = Object.assign({}, DEFAULTS);
let mask = [0,0,1,1,1,0,0,0,0,0,0,0];
let phrase = []; let byStep = [];
let clockStep = 0; let generation = 0; let dirty = true; let rngState = 1;
const TICKS_PER_STEP = 120, STEPS = 64;
const clamp = (x,lo,hi)=>Math.max(lo,Math.min(hi,x));
const wrap = (x,n)=>((x%n)+n)%n;
function reseed(n) { rngState = (Math.floor(n)>>>0) || 0x12345678; }
function rand() { rngState ^= rngState << 13; rngState ^= rngState >>> 17; rngState ^= rngState << 5; return (rngState >>> 0)/4294967296; }
function randi(n) { return Math.floor(rand()*n); }
function choose(a) { return a[randi(a.length)]; }
function prob(x) {return rand() < clamp(x,0,1);}
function allowed(p) {
  const root=wrap(Math.round(cfg.center),12), intervals=SCALES[clamp(cfg.scale,0,17)];
  return intervals.indexOf(wrap(p-root,12)) >= 0;
}
function candidates(target,lower,upper) {
  let out=[];
  for(let p=Math.max(0,Math.round(lower));p<=Math.min(127,Math.round(upper));p++) if(allowed(p)) out.push(p);
  if(!out.length)out=[clamp(Math.round(target),0,127)];
  return out;
}
function harmonyChord(step) {
  let d=0;
  const ix=Math.floor(step/16)%4;
  switch(cfg.progression){
    case 1:d=[0,4,5,3][ix]; break; // I - V - vi - IV
    case 2:d=[1,4,0,5][ix]; break; // ii - V - I - vi
    case 3:d=[0,5,2,6][ix]; break; // i - VI - III - VII
    case 4:d=[0,3,4,0][ix]; break; // I - IV - V - I
  }
  const sc=SCALES[clamp(cfg.scale,0,17)], n=sc.length;
  const tones=[sc[d%n],sc[(d+2)%n]+12*Math.floor((d+2)/n),sc[(d+4)%n]+12*Math.floor((d+4)/n)];
  if(cfg.chordmode === 2)tones.push(sc[(d+6)%n]+12*Math.floor((d+6)/n));
  return tones.map(x=>wrap(x,12));
}
function chordOk(p,tones) {return tones.indexOf(wrap(p-Math.round(cfg.center),12)) >= 0;}
function localContour(step) {
  const t=wrap(step,16)/15;
  switch(cfg.contour){
    case 1:return (t*2-1);                  // Rising
    case 2:return (1-t*2);                  // Falling
    case 3:return 1-4*Math.abs(t-0.5);      // Arch
    case 4:return Math.sin(2*Math.PI*t);   // Wave
    default:return 0;
  }
}
function densityAt(step,voice) {
  let d=cfg.density/100;
  const s=wrap(step,16),t=s/15;
  if(cfg.probshape===1)d*=0.45+1.1*t;
  else if(cfg.probshape===2)d*=1.55-1.1*t;
  else if(cfg.probshape===3)d*=0.85+0.4*Math.sin(2*Math.PI*t);
  if(cfg.rhythmmode===1){
    const pulses=clamp(Math.round(d*12),1,16);
    const offset=voice*3;
    return wrap((s+offset)*pulses,16)<pulses ? 1 : 0;
  }
  if(cfg.rhythmmode===2)d*=s%4===0?1.5:0.55;
  if(cfg.rhythmmode===3)d*=s%4===2 || s%4===3?1.6:0.45;
  return clamp(d,0,1);
}
function durationAt(i,voice,step){
  const choices=DURATIONS.filter((x,k)=>mask[k]);
  const usable=choices.length?choices:[120,240,480];
  if(cfg.durmode===1)return usable[(i+voice)%usable.length];
  if(cfg.durmode===2)return Math.max(30,Math.min(1920,((4-(step%4))*TICKS_PER_STEP)));
  return choose(usable);
}
function pitchAt(voice,step,prevPitch,reference){
  const n=cfg.voices;
  const shift=voice-(n-1)/2;
  const center=cfg.center+shift*cfg.spread;
  const low=clamp(center-cfg.range,0,127), high=clamp(center+cfg.range,0,127);
  const cont=localContour(step)*cfg.range*0.70;
  let tgt=center+cont+(rand()-0.5)*cfg.range;
  if(prevPitch!==null) {
    const smooth=cfg.smooth/100;
    tgt=tgt*(1-smooth)+prevPitch*smooth;
  }
  if(reference!==null && voice>0) {
    const indep=cfg.independence/100;
    tgt=tgt*indep + (reference+shift*cfg.spread)*(1-indep);
  }
  const tones=harmonyChord(step);
  let p=candidates(tgt,low,high);
  if(cfg.chordmode!==0 && prob(cfg.chordtone/100)){
    const chordP=p.filter(x=>chordOk(x,tones));
    if(chordP.length)p=chordP;
  }
  p.sort((a,b)=>Math.abs(a-tgt)-Math.abs(b-tgt));
  let pick=p[Math.min(randi(Math.min(4,p.length)),p.length-1)];
  if(prevPitch!==null && prob(cfg.repeat/100))pick=prevPitch;
  return clamp(pick,0,127);
}
function generate() {
  dirty=false;
  // Fixed-seed replay until REGEN, or per-cycle mutations if mutation > 0.
  reseed((Math.round(cfg.seed)+generation*1013904223)>>>0);
  phrase=[]; byStep=Array.from({length:STEPS},()=>[]);
  const last=Array(cfg.voices).fill(null);
  let durationIndex=0;
  for(let step=0;step<STEPS;step++) {
    let reference=null;
    for(let v=0;v<cfg.voices;v++) {
      const offset=wrap(Math.round(cfg.rotation),16);
      const at=wrap(step+offset+v*(1-cfg.independence/100),16);
      const chance=densityAt(Math.round(at),v);
      const on=chance>=1 || prob(chance*(v===0?1:0.87));
      if(!on) continue;
      const pitch=pitchAt(v,step,last[v],reference);
      if(reference===null)reference=pitch;
      last[v]=pitch;
      const dur=durationAt(durationIndex++,v,step);
      const accent=step%4===0?cfg.accent/100*18:0;
      const vel=clamp(Math.round(cfg.velocity+accent+(rand()*2-1)*cfg.velrand),1,127);
      const note={voice:v,pitch:pitch,step:step,duration:dur,velocity:vel};
      phrase.push(note);byStep[step].push(note);
    }
  }
  outlet(1,"clear");
  outlet(1,"config",cfg.center,cfg.range,cfg.voices);
  for(const n of phrase)outlet(1,"note",n.voice,n.pitch,n.step,n.duration,n.velocity);
  outlet(1,"done");
}
function bang() {
  if(dirty||!byStep.length)generate();
  const step=clockStep%STEPS;
  outlet(1,"cursor",step);
  for(const n of byStep[step])outlet(0,n.pitch,n.velocity,n.duration);
  clockStep++;
  if(clockStep%STEPS===0 && !cfg.freeze && cfg.mutation>0 && prob(cfg.mutation/100)){
    generation++; dirty=true;
  }
}
function regenerate() {generation++;dirty=true;generate();}
function reset() {clockStep=0;generation=0;dirty=true;generate();}
function freeze(x){cfg.freeze=Number(x)?1:0;}
function lengthmask(i,x){i=Number(i)|0;if(i>=0&&i<12){mask[i]=Number(x)?1:0;dirty=true;}}
const bounds={
  center:[36,96],range:[0,28],smooth:[0,100],density:[0,100],rotation:[0,15],
  accent:[0,100],voices:[1,6],spread:[0,18],independence:[0,100],chordtone:[0,100],
  mutation:[0,100],repeat:[0,100],velocity:[1,127],velrand:[0,64],seed:[0,99999],
  scale:[0,17],contour:[0,4],rhythmmode:[0,3],probshape:[0,3],chordmode:[0,2],progression:[0,4],durmode:[0,2]
};
function change(key,x){let a=bounds[key];if(!a)return;let v=clamp(Number(x)||0,a[0],a[1]);cfg[key]=Math.round(v);dirty=true;}
function center(x){change('center',x)}function range(x){change('range',x)}
function smooth(x){change('smooth',x)}function density(x){change('density',x)}
function rotation(x){change('rotation',x)}function accent(x){change('accent',x)}
function voices(x){change('voices',x)}function spread(x){change('spread',x)}
function independence(x){change('independence',x)}function chordtone(x){change('chordtone',x)}
function mutation(x){change('mutation',x)}function repeat(x){change('repeat',x)}
function velocity(x){change('velocity',x)}function velrand(x){change('velrand',x)}
function seed(x){change('seed',x)}function scale(x){change('scale',x)}
function contour(x){change('contour',x)}function rhythmmode(x){change('rhythmmode',x)}
function probshape(x){change('probshape',x)}function chordmode(x){change('chordmode',x)}
function progression(x){change('progression',x)}function durmode(x){change('durmode',x)}
function loadbang(){generate();}
