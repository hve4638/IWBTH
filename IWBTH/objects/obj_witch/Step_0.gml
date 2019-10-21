/// @description Dir
direction=90;
if D {
 if 0.2<speed {D=!D;}
 speed+=0.01;
}
else {
 if speed<-0.2 {D=!D;}
 speed-=0.01;
}

if EFFECT
with(sys_part) {
    if ++prt[21]==0 event_user(0);
    part_emitter_region(Sys[21],emitter[21],other.sx,other.sx,other.sy,other.sy,ps_shape_ellipse,1);
    part_emitter_burst(Sys[21],emitter[21],particle[21],5);
}

///START

if 0<uy {
    var t=0;
    if 1<uy {t=point_distance(0,0,uy,0)/8;}
    else {uy=0;}
    y-=t;
    uy-=t;
}

