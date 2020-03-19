if onlaserline
{
	var lx, ly;
	lx = x + ox + lengthdir_x(64 - 12, focus_dir);
	ly = y + oy + lengthdir_y(64 - 12, focus_dir);
	
	gpu_set_tex_filter(false);
	draw_sprite_ext(spr_laserline, 0, lx, ly, 100, 2, focus_dir, c_yellow, 9.0);
	gpu_set_tex_filter(true);
}


if onwhiteout
{
	draw_set_alpha(whiteout_alpha);

	draw_set_color(c_white);
	draw_rectangle(w_left + 1, 0, w_right - 1, w_bottom - 1, false);
	
	draw_set_color(c_black);
	draw_rectangle(0, 0, w_left, room_height, false);
	draw_rectangle(room_width, 0, w_right, room_height, false);
	draw_rectangle(w_left + 1, w_bottom, w_right - 1, room_height, false);
	
	gpu_set_fog(true, c_black, 0, 0);
	draw_self();
	with(obj_player)
		draw_self();
	gpu_set_fog(false, 0, 0, 0);
}
/*
shader_set(sh_wave);
	var ut, uw, uc;
	ut = shader_get_uniform(sh_wave, "u_time");
	uw = shader_get_uniform(sh_wave, "u_width");
	uc = shader_get_uniform(sh_wave, "u_cycle");
	shader_set_uniform_f(ut, time_idx);
	shader_set_uniform_f(uw, 1);
	shader_set_uniform_f(uc, 1);
	draw_self_pos(x, y - 128);
shader_reset();
*/