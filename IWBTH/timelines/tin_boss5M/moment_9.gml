with(sys_part) {
    if ++prt[24]==0 event_user(0);
    part_system_depth(Sys[24],-10);
    part_emitter_region(Sys[24],emitter[24],Me.x-8,Me.x+8,Me.y-8,Me.y+8,ps_shape_ellipse,1);
    part_emitter_burst(Sys[24],emitter[24],particle[24],400);
}


if t_i++ < 2 {
    timeline_position--;
} else {
    t_i=0;
    inv=true;
    x=-100; y=-100;
    with(sys_part) {
        if ++prt[25]==0 event_user(0);
        part_emitter_region(Sys[25],emitter[25],Me.x,Me.x,Me.y,Me.y,ps_shape_ellipse,1);
        part_emitter_burst(Sys[25],emitter[25],particle[25],30);
    }
}

