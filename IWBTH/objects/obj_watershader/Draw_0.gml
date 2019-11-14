shader_set(shd_water);
	//shader_set_uniform_f(u_resolution ,bbox_right - bbox_left, bbox_bottom - bbox_top);
	shader_set_uniform_f(u_time, sec);
	texture_set_stage(u_texture, surface_get_texture(application_surface));
	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,false);

shader_reset();