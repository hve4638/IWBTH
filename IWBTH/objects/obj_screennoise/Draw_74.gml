var s = view_w / surface_get_width(application_surface);

shader_set(sh_wave);
	var ut, uw, uc;
	ut = shader_get_uniform(sh_wave, "u_time");
	uw = shader_get_uniform(sh_wave, "u_width");
	uc = shader_get_uniform(sh_wave, "u_cycle");
	shader_set_uniform_f(ut, time_idx);
	shader_set_uniform_f(uw, 0.01);
	shader_set_uniform_f(uc, 0.45);
	draw_surface_ext(application_surface, 0, sy, s, s, 0.0, c_white, 1.0);
	draw_surface_ext(application_surface, 0, sy + view_h, s, s, 0.0, c_white, 1.0);
shader_reset();