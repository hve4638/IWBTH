if (instance_number(obj_bullet) < 9) {
    instance_create(x,y-3,obj_bullet);
    scp_sfx(snd_Shoot,-1);
    //audio_play_sound(snd_Shoot,0,0);
}
