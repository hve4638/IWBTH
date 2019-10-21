/// @description Hit
if onhealth && !inv && 0.5<image_alpha {
    audio_play_sound(snd_BossHit,0,0);
    with(other) {instance_destroy();}
    HP-=DEAL*ARMOR;
    
    if phase==1 HP=max(HP,MAXHP*0.75);
    else if phase==2 HP=max(HP,MAXHP*0.5);
    else if phase!=4 HP=max(HP,MAXHP*0.25);
    
    if HP<0 {
        scp_bosskill(5);
        room_goto(rmsin2);
        instance_destroy();
    }
}

