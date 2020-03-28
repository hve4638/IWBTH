draw_self();

var ex = sprite_ext();
ex[8] = 0.4;

gpu_set_blendmode(bm_add);
	draw_sprite_array(ex);
gpu_set_blendmode(bm_normal);