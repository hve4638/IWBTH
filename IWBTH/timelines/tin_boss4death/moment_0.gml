t=0; scp_shake(64,30,1);
audio_play_sound(snd_Explode,0,0);
audio_stop_sound(perbgm);
with(obj_holysword) {instance_destroy();}
with(obj_fireball) {instance_destroy();}

