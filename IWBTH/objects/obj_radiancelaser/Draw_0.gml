var ex = sprite_ext();

gpu_set_blendmode(bm_add);

	ex[1] = 1;
	ex[5] = image_yscale * 1.0;
	ex[8] = 0.4;
	draw_sprite_array(ex);

	ex[1] = 2;
	ex[5] = image_yscale * 0.75;
	ex[8] = 1.0;
	draw_sprite_array(ex);

gpu_set_blendmode(bm_normal);