if room_height<y || !place_free(x,y) instance_destroy();
else with(sys_part) {
    if ++prt[47]==0 event_user(0);
    part_emitter_region(Sys[47],emitter[47],other.x+8,other.x-8,other.y+22,other.y+8,1,1);
    part_emitter_burst(Sys[47],emitter[47],particle[47],10);
}

