with(sys_part){ 
    if ++prt[10]==0 event_user(0);
    part_emitter_region(Sys[10],emitter[10],other.x+12,other.x-12,other.y+12,other.y-12,1,0);
    part_emitter_burst(Sys[10],emitter[10],particle[10],40);
}

