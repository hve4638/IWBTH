with(sys_part){
    if ++prt[27]==0 event_user(0);
    part_emitter_region(Sys[27],emitter[27],other.x+5,other.x-5,other.y+5,other.y-5,1,1);
    part_emitter_burst(Sys[27],emitter[27],particle[27],3);
}

if --life==0 instance_destroy();

