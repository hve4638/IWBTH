if !onlinear
	gpu_set_tex_filter(false);

gpu_set_blendmode(blend);

draw_self();

gpu_set_tex_filter(true);
gpu_set_blendmode(bm_normal);