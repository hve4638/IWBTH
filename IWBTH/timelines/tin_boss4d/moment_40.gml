with(sys_part) {
    if ++prt[16]==0 event_user(0);
    part_emitter_region(Sys[16],emitter[16],other.tx-10,other.tx+10,432,448,1,1);
    part_emitter_burst(Sys[16],emitter[16],particle[16],20);
} if t++<3 {timeline_position--;} else t=0;

