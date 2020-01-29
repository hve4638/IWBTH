///@param alpha
///@param color*
var a = argument[0];
var c = argument_count > 1 ? argument[1] : c_white;

if !surface_exists(global.edgeblur_surf)
{
	surface_edgeblur_create();
	/*
	var s, o, r;
	s = max(win_w, win_h);
	o = s div 2;
	r = s * 0.65;

	var surf = surface_create(s, s);
	surface_set_target(surf);
		draw_clear(c_white);
		draw_circle_color(o, o, r, c_black, c_white, 0);
		gpu_set_blendmode(bm_normal);
	surface_reset_target();
	
	
	global.edgeblur_surf = surface_create(win_w, win_h);
	surface_set_target(global.edgeblur_surf);
		shader_set(shd_blackalpha);
		draw_surface_ext(surf,0,0, win_w/s, win_h/s, 0, c_white, 1.0);
		shader_reset();
	surface_reset_target();

	surface_free(surf);*/
}

shader_set(shd_replacecolor);
var b = shader_get_uniform(shd_replacecolor, "u_color");
shader_set_uniform_f_array(b, coltodec(c));
draw_surface_ext(global.edgeblur_surf, 0, 0, 1, 1, 0, c_white, a);
shader_reset();