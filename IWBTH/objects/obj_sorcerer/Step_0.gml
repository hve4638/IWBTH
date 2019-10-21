if B {if x<Me.x image_xscale=-1; else image_xscale=1;}
if follow && scp_follow(clamp(xx,48,room_width-48),y,12)==0 follow=false;

if S {
    direction=90;
    if D {
        if 0.2<speed {D=!D;}
        speed+=0.01;
    }
    else {
        if speed<-0.2 {D=!D;}
        speed-=0.01;
    }
}

///Phase Set
if phase==0 && instance_exists(shd) {shd.x=x; shd.y=y+8;}
if phase==0 || phase==1 with(sys_lighting) {if sys_lighting.val<110 sys_lighting.val+=1;}
else if phase==2 with(sys_lighting) {if sys_lighting.val<140 sys_lighting.val+=0.3;}
else if phase==3 with(sys_lighting) {if sys_lighting.val<160 sys_lighting.val+=0.3;}
else if phase==-1 with(sys_lighting) {if 10<sys_lighting.val sys_lighting.val-=0.5;}

///SHIELD
if 1<circle_time onshield=false;
else if circle_time==1 onshield=true;

///Particle
if ds
with(sys_part) {
    if ++prt[33]==0 event_user(0);
    part_emitter_region(Sys[33],emitter[33],other.dsx+46,other.dsx-46,other.dsy+45,other.dsy-45,0,1);
    part_emitter_burst(Sys[33],emitter[33],particle[33],20);
}

if ondie 
with(sys_part) {
    if ++prt[57]==0 event_user(0);
    part_system_depth(Sys[57],-100);
    part_emitter_region(Sys[57],emitter[57],other.x,other.x,other.y+12,other.y+12,ps_shape_ellipse,1);
    part_emitter_burst(Sys[57],emitter[57],particle[57],24);
}

