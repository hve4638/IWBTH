var ex = sprite_ext();

blendmode(bm_add);
	ex[Spr.img] = 2;
	ex[Spr.alpha] = image_alpha * random_range(0.5, 0.7);
	draw_sprite_array(ex);
blendmode(bm_normal);