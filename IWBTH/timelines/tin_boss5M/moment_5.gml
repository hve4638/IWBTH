image_alpha=(15-t_i)/15;

with(sys_part) {
    if ++prt[24]==0 event_user(0);
    part_system_depth(Sys[24],-10);
    part_emitter_region(Sys[24],emitter[24],other.x-10,other.x+10,other.y-10,other.y+10,ps_shape_ellipse,1);
    part_emitter_burst(Sys[24],emitter[24],particle[24],400);
}


if t_i++ < 15 {
    timeline_position--;
} else t_i=0;

