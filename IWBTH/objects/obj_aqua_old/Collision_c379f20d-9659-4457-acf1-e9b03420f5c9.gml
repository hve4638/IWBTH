if onhealth && !inv {
    audio_play_sound(snd_BossHit,0,0);
    with(other) {instance_destroy();}
    HP-=DEAL*ARMOR;
    
    if HP<=0 && timeline_index=tin_boss5L {
        scp_bosskill(3);
    
        with(obj_cirle) instance_destroy();
        with(obj_spell) {
            repeat(5) instance_create(x+irandom_range(-4,4),y+irandom_range(-4,4),obj_bubble);
            instance_destroy();
        }
        with(obj_danmaku) {
            repeat(5) instance_create(x+irandom_range(-4,4),y+irandom_range(-4,4),obj_bubble);
            instance_destroy();
        }
        with(obj_beam) instance_destroy();
        scp_timeline(tin_boss5Death);
    }
}

