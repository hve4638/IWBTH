death += 1;

instance_create_layer(0, 0, L_SYS, obj_gameover);

with(sys_global)
	audio_sound_gain(bgm_p, 0.15, 750);