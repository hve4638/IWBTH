if i++<20 { DEF=0.8;
    image_alpha=clamp(image_alpha+0.05,0,1);
    with(sys_part){
        if ++prt[17]==0 event_user(0);
        part_emitter_region(Sys[17],emitter[17],other.x-37,other.x+37,other.y+54,other.y-54,1,0);
        part_emitter_burst(Sys[17],emitter[17],particle[17],50);
    } timeline_position--;
} else {alarm[0]=60;}

