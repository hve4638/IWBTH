/// @description particle
/*
with(sys_part){
    if ++prt[23]==0 event_user(0);
    part_system_depth(Sys[23],0);
    part_emitter_region(Sys[23],emitter[23],other.startx-6,other.startx+6,other.starty-6,other.starty+6,ps_shape_ellipse,1);
    part_emitter_burst(Sys[23],emitter[23],particle[23],1);
}

if (K mod 5 == 0 ) with(sys_part){part_system_depth(Sys[23],-10);}
else with(sys_part){part_system_depth(Sys[23],0);}
/*
with(sys_part) {
    if ++prt[26]==0 event_user(0);
    part_emitter_region(Sys[26],emitter[26],other.startx-16,other.startx+16,other.starty-16,other.starty+16,ps_shape_ellipse,1);
    part_emitter_burst(Sys[26],emitter[26],particle[26],1);
}
K++;*/




/* */
y = ystart + sin(degtorad(I)) * 2;
scp_act_step();

I++;

/* */
/*  */
