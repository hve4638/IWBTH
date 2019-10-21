if Start { Start=false;
    scp_play(snd_Boss2,0);
    with(other) {
        i=instance_create(x,y,obj_charge);
        with(i) {
            image_blend=c_black
            image_xscale=0;
            image_yscale=0;
            image_angle=90;
            get_xscale=1;
            get_yscale=1;
            get_alpha=-0.01;
            ktime=30; depth=-20;
        }
    }
    
    drawhp=0;
    onhealth=true; i=0;
    with(sys_global) {vname=es("boss","reaper"); vtime=100;}
    with(obj_save) {instance_destroy();}
    timeline_index=tin_boss4begin;
    timeline_position=0;
    timeline_running=1;
    exit;
}

if onhealth {
    if OnInv exit;
    audio_play_sound(snd_BossHit,0,0);
    with(other) {instance_destroy();}
    hp-=DEAL*abs(1-DEF);
    if hp<0 && timeline_index==tin_boss4lp {
        timeline_index=tin_boss4death;
        timeline_position=0;
        timeline_running=1;
        onhealth=0;
        
        scp_bosskill(2);
    }
    else if hp<220*0.2 && timeline_index!=tin_boss4lp {OnInv=true;}
}

