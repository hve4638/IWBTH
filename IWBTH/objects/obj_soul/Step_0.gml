var idx = IDX;
with(sys_part)
{
    if ++prt[idx]==0 event_user(0);
    part_system_depth(Sys[idx],other.depth);
    part_emitter_region(Sys[idx],emitter[idx],other.x+10,other.x-10,other.y+16,other.y-16,1,1);
    part_emitter_burst(Sys[idx],emitter[idx],particle[idx],5);
}

