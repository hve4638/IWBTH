with(sys_part) {
    if ++prt[30]==0 event_user(0);
    part_emitter_region(Sys[30],emitter[30],other.x+18,other.x-18,other.y+18,other.y-18,1,1);
    part_emitter_burst(Sys[30],emitter[30],particle[30],6);
}

