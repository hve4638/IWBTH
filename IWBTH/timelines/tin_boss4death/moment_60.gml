with(sys_part){
    if ++prt[17]==0 event_user(0);
    part_emitter_region(Sys[17],emitter[17],other.x-37,other.x+37,other.y+54,other.y-54,1,0);
    part_emitter_burst(Sys[17],emitter[17],particle[17],90);
}
if t++<60 timeline_position--;
else {
    var i=instance_create(0,0,obj_trigger);
    i.cs=9; i.On=1;
    instance_destroy();
}

