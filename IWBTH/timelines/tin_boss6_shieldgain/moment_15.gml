with(sys_part) {
    if ++prt[59]==0 event_user(0);
    part_emitter_region(Sys[59],emitter[59],other.x,other.x,other.y+8,other.y+8,ps_shape_ellipse,1);
    part_emitter_burst(Sys[59],emitter[59],particle[59],15);
}

SHIELD=MAXSHIELD;


