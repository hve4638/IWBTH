var ex = sprite_ext();
draw_sprite_array(ex);
blendmode(bm_add);
	ex[Spr.img] = 1;
	ex[Spr.alpha] = random_range(0.3, 0.6);
blendmode(bm_normal);