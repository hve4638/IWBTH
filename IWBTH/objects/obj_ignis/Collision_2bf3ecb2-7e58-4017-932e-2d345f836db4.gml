if onhealth {
    scp_sfx(snd_BossHit,1);
    with(other) {instance_destroy();}
    HP-=DEAL*ARMOR;
    
    if HP<=0 {
        die=true; onhealth=false;
        alarm[0]=-1; alarm[1]=-1;

        scp_timeline(tin_boss2D);
        scp_bosskill(1);
    }
}

