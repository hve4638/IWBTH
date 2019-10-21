if onhealth {
    audio_play_sound(snd_BossHit,0,0);
    with(other) {instance_destroy();}
    HP-=DEAL*ARMOR;
    
    var i=instance_create(x,y,obj_charge);
    with(i) {
        ktime=10;
        image_blend=c_purple;
        image_xscale=0;
        image_yscale=0;
        image_alpha=0.5;
        get_xscale=0.2;
        get_yscale=0.2;
        get_alpha=-0.05;
    }
    
    if HP<=0 {
        onhealth=false;
        with(obj_magic) instance_destroy();
        alarm[0]=-1;
        timeline_index=tin_boss3D;
        timeline_loop=0;
        timeline_position=0;
        timeline_running=1;
    }
}

