if D {
    speed+=0.01;
    if 0.1<speed {D=!D;}
} else {
    speed-=0.01;
    if -0.1>speed {D=!D;}
}

///particle
if !instance_exists(obj_tp) &&  !instance_exists(obj_create_tpevent)
with(sys_part){
    if ++prt[23]==0 event_user(0);
    part_system_depth(Sys[23],0);
    part_emitter_region(Sys[23],emitter[23],other.startx-6,other.startx+6,other.starty-6,other.starty+6,ps_shape_ellipse,1);
    part_emitter_burst(Sys[23],emitter[23],particle[23],1);
}
/*

with(sys_part) {
    if ++prt[26]==0 event_user(0);
    part_emitter_region(Sys[26],emitter[26],other.startx-16,other.startx+16,other.starty-16,other.starty+16,ps_shape_ellipse,1);
    part_emitter_burst(Sys[26],emitter[26],particle[26],1);
}
K++;

/* */
/*  */
