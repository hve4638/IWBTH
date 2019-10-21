//image_speed=0; image_index=1;
speed=clamp(speed+movspd,minspd,maxspd);

if I mod dirtime == 0 {
    direction+=movdir;
}

with(sys_part) {
    if ++prt[49]==0 event_user(0);
    part_type_colour1(particle[49],c_white);
    part_emitter_region(Sys[49],emitter[49],other.x,other.x,other.y,other.y,1,0);
    part_emitter_burst(Sys[49],emitter[49],particle[49],1);
} 
I++;

