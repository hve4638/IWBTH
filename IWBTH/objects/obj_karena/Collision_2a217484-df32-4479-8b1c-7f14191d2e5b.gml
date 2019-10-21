/// @description Hit
if onhealth && !inv {
    audio_play_sound(snd_BossHit,0,0);
    with(other) {instance_destroy();}
    HP-=DEAL*ARMOR;
    
    if HP<0
    {
        alarm[0] = -1;
        scp_timeline(tin_boss8_death);
    }
}

