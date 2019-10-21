/// @description Hit
if onhealth && !inv && 0.5<image_alpha {
    audio_play_sound(snd_BossHit,0,0);
    with(other) {instance_destroy();}
    HP-=DEAL*ARMOR;
    
    if phase!=5 HP=max(HP,10);
    if HP<0 {
        scp_bosskill(5);
        room_goto(rmsin2);
        instance_destroy();
    }
}

