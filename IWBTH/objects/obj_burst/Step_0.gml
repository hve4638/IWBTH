
with(sys_part){
    if ++prt[7]==0 event_user(0);
    part_emitter_region(Sys[7],emitter[7],other.x+other.lt,other.x-other.lt,other.y+other.lt,other.y-other.lt,1,0);
    part_emitter_burst(Sys[7],emitter[7],particle[7],other.pt);
}

