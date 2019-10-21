

if onblood with(sys_part) {
    if ++prt[43]==0 event_user(0);
    part_emitter_region(Sys[43],emitter[43],other.x+24,other.x-24,other.y+60,other.y-30,1,0);
    part_emitter_burst(Sys[43],emitter[43],particle[43],4);
}

if ondark && T mod 5 == 0 {
    with(sys_part) {
        if ++prt[42]==0 event_user(0);
        part_emitter_region(Sys[42],emitter[42],other.x+24,other.x-24,other.y+60,other.y-60,1,0);
        part_emitter_burst(Sys[42],emitter[42],particle[42],other.cnt);
    }
}
T++;

