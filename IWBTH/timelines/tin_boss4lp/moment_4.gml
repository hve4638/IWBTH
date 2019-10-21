with(sys_part) {
    if ++prt[18]==0 event_user(0);
    part_emitter_region(Sys[18],emitter[18],other.x-64,other.x+64,other.y+48,other.y+54,ps_shape_ellipse,1);
    part_emitter_burst(Sys[18],emitter[18],particle[18],100);
} if t++<8 {timeline_position-=2;}

