if onlaserline
{
	var lx, ly;
	lx = x + lengthdir_x(64 - 12, focus_dir);
	ly = y - 7 + lengthdir_y(64 - 12, focus_dir);
	
	gpu_set_tex_filter(false);
	draw_sprite_ext(spr_laserline, 0, lx, ly, 100, 2, focus_dir, c_yellow, 9.0);
	gpu_set_tex_filter(true);
}