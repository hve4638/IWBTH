if image_index < 10 {
    with(sys_part) {
        if ++prt[1]==0 event_user(0);
        part_emitter_region(Sys[1],emitter[1],other.x,other.x,other.y,other.y,0,0);
        part_emitter_burst(Sys[1],emitter[1],particle[1],3);
    }
} else instance_destroy();

