// AVSeed piano-roll visualization (Max 9 jsui / legacy ECMAScript)
// Messages: clear; config center range voices; note voice pitch step durTicks velocity; cursor step; done.
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;
inlets=1;
outlets=1;
var notes=[];
var centerValue=60, rangeValue=16, voicesValue=3, cursorStep=0;
var palette=[
 [0.42,0.86,1.0],[1.0,0.69,0.40],[0.77,0.65,1.0],
 [0.61,0.93,0.69],[1.0,0.52,0.68],[1.0,0.89,0.43]
];
function clear(){notes=[];cursorStep=0;}
function config(c,r,v){centerValue=Number(c);rangeValue=Number(r);voicesValue=Number(v);}
function note(v,p,s,d,vel){notes.push([Number(v),Number(p),Number(s),Number(d),Number(vel)]);}
function done(){mgraphics.redraw();}
function cursor(n){cursorStep=Number(n);mgraphics.redraw();}
function color(r,g,b,a){mgraphics.set_source_rgba(r,g,b,a===undefined?1:a);}
function rect(x,y,w,h){mgraphics.rectangle(x,y,w,h);mgraphics.fill();}
function label(s,x,y,size,r,g,b){mgraphics.select_font_face('Arial');mgraphics.set_font_size(size);color(r,g,b,1);mgraphics.move_to(x,y);mgraphics.show_text(String(s));}
function paint(){
 var size=mgraphics.size,w=size[0],h=size[1];
 color(0.062,0.083,0.125,1);rect(0,0,w,h);
 var padL=46,padR=12,padT=23,padB=18,gw=w-padL-padR,gh=h-padT-padB;
 var min=Math.max(0,Math.floor(centerValue-rangeValue-4));
 var max=Math.min(127,Math.ceil(centerValue+rangeValue+4));
 if(max-min<24){max=Math.min(127,min+24);}
 var rows=max-min+1,rowH=gh/rows;
 for(var pitch=min;pitch<=max;pitch++){
   var pc=pitch%12;
   if(pc===1||pc===3||pc===6||pc===8||pc===10){color(0.10,0.14,0.19,1);rect(padL,padT+(max-pitch)*rowH,gw,rowH);}
   if(pitch%12===0){color(0.24,0.30,0.39,.7);rect(padL,padT+(max-pitch+1)*rowH-0.5,gw,.5);}
   if(pitch%12===0)label('C'+String(Math.floor(pitch/12)-1),3,padT+(max-pitch+0.82)*rowH,10,.65,.74,.83);
 }
 for(var s=0;s<=64;s++){
   var x=padL+(s/64)*gw;
   if(s%16===0)color(.38,.48,.61,0.65);
   else if(s%4===0)color(.28,.34,.43,.42);
   else color(.21,.26,.33,.20);
   rect(x,padT,s%16===0?1.6:.75,gh);
 }
 for(var i=0;i<notes.length;i++){
   var n=notes[i],st=n[2],en=Math.min(64,st+n[3]/120),pitch=n[1];
   if(pitch<min||pitch>max)continue;
   var ny=padT+(max-pitch)*rowH+0.7;
   var nx=padL+(st/64)*gw+0.8;
   var nw=Math.max(2,(en-st)/64*gw-1.6);
   var nh=Math.max(2,rowH-1.4);
   var c=palette[n[0]%palette.length];
   color(c[0],c[1],c[2],0.77+0.23*n[4]/127);rect(nx,ny,nw,nh);
 }
 var px=padL+(cursorStep/64)*gw;
 color(1,.98,.87,.88);rect(px,padT,2,gh);
 for(var b=0;b<4;b++)label('BAR '+String(b+1),padL+b*gw/4+5,14,10,.80,.86,.94);
 label('MIDI',4,14,10,.80,.86,.94);
 label('16th-step grid  /  4 bars',w-174,h-3,10,.56,.64,.74);
}
