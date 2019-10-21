p_i=0;

ds=true;
dsx=x; dsy=y-120;


if phase==3 {
    timeline_position=49;
    var tx, ty;
    with(obj_hmore) {
        deffect=2; alarm[0]=80;
        tx=x+16; ty=y+16;
    }
    with(sys_part) {
        if ++prt[37]==0 event_user(0);
        part_emitter_region(Sys[37],emitter[37],tx+12,tx-12,ty+12,ty-12,1,1);
        part_emitter_burst(Sys[37],emitter[37],particle[37],5);
    }
}


circle_index=1;
circle_time=130;

