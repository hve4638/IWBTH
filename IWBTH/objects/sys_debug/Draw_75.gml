if mouse_check_button(mb_right)
{
	var s, o, r;
	s = max(win_w, win_h)
	o = s div 2;
	r = s * 0.6;
	
	var surf = surface_create(s, s);
	surface_set_target(surf);
		draw_clear(c_white);
		//gpu_set_blendmode(bm_subtract);
		draw_circle_color(o, o, r, c_black, c_white, 0);
		gpu_set_blendmode(bm_normal);
	surface_reset_target();

	shader_set(shd_blackalpha);
		draw_surface_ext(surf,0,0, win_w/s, win_h/s, 0, c_white, 1.0);
	shader_reset();
	
	surface_free(surf);
}