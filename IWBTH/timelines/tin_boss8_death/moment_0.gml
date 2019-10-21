scp_shake(32,10,1);
onhealth = false;
audio_play_sound(snd_Explode,0,0);
with(obj_scythe) {instance_destroy();}
with(obj_holysword) {instance_destroy();}
with(obj_fireball) {instance_destroy();}
init_part = true;

