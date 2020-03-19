if on_customview
{
	if keyboard_check(vk_control)
	{
		draw_set_color(c_yellow);
		draw_rectangle(cv_x1, cv_y1, cv_x2, cv_y1 + (cv_x2 - cv_x1) * view_h / view_w, true);
	}
}


if keyboard_check(ord("J"))
{
	shader_set(sh_wave);
		var ut, uw, uc;
		ut = shader_get_uniform(sh_wave, "u_time");
		uw = shader_get_uniform(sh_wave, "u_width");
		uc = shader_get_uniform(sh_wave, "u_cycle");
		shader_set_uniform_f(ut, time_idx);
		shader_set_uniform_f(uw, 0.02);
		shader_set_uniform_f(uc, 0.45);
		draw_sprite(background1, 0, 0, 0);
	shader_reset();
}