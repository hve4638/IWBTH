/*/// @description Paritcle
if 0<l
with(sys_part) {
    if ++prt[29]==0 event_user(0);
    part_emitter_region(Sys[29],emitter[29],other.x+10,other.x-10,other.y-8+10,other.y-8-10,1,1);
    part_emitter_burst(Sys[29],emitter[29],particle[29],1);
}


///change bright
if 1<image_alpha {
    bright=image_alpha;
    image_alpha=1;
}

