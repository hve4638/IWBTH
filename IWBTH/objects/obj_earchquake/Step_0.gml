x+=xx;
y+=yy;

if x<=768+32 {instance_destroy();}

with(sys_part){
    if ++prt[4]==0 event_user(0);
    part_emitter_region(Sys[4],emitter[4],other.x,other.x+32,other.y,other.y+16,0,0);
    part_emitter_burst(Sys[4],emitter[4],particle[4],10);
}

