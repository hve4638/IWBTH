instance_create(x,500,obj_earchquake);
instance_create(x+32,500,obj_earchquake);
instance_create(x-32,500,obj_earchquake);
instance_create(x+64,500,obj_earchquake);

obj_earchquake.xx=-64;

scp_shake(32,3,1);

audio_play_sound(snd_Explode,0,0);

