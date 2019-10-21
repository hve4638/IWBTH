if onhealth {
 audio_play_sound(snd_BossHit,0,0);
 with(other) {instance_destroy();}
 hp-=1;
}

