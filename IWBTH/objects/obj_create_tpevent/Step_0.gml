/// @description Particle
if EFFECT
with(sys_part){
    if ++prt[23]==0 event_user(0);
    part_system_depth(Sys[23],-15);
    part_emitter_region(Sys[23],emitter[23],other.x-6,other.x+6,other.y-6,other.y+6,ps_shape_ellipse,1);
    part_emitter_burst(Sys[23],emitter[23],particle[23],1);
}

