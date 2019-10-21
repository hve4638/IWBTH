/// @description particle
if i++ mod 7 == 0 {
    with(sys_part) {
        if ++prt[41]==0 event_user(0);
        part_emitter_region(Sys[41],emitter[41],288+16,512-16,416+16,416,1,0);
        part_emitter_burst(Sys[41],emitter[41],particle[41],other.cnt);
    }
}

