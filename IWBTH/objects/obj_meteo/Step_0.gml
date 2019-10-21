if ep_y<=y ep=true;

if ep {
    with(sys_part) {
        if ++prt[32]==0 event_user(0);
        part_emitter_region(Sys[32],emitter[32],other.x-16,other.x+16,other.y+14,other.y-14,1,0);
        part_emitter_burst(Sys[32],emitter[32],particle[32],5);
    }
    if 20<=T++ {
        instance_destroy();
    } else if T==1 {
        repeat(sndr) scp_sfx(snd_Explode2,3);
    }
    
    scp_shake(10,2,0);
    direction=0; speed=0; movspd=0;
} else {
    with(sys_part) {
        if ++prt[31]==0 event_user(0);
        part_emitter_region(Sys[31],emitter[31],other.x+26,other.x-26,other.y+24,other.y-24,1,0);
        part_emitter_burst(Sys[31],emitter[31],particle[31],5);
    }
    scp_shake(1,1,0);
}

scp_light(x,y,196);
speed+=movspd;

