if surface_exists(global.edgeblur_surf)
	surface_free(global.edgeblur_surf);

var s, o, r;
s = max(view_w, view_h);
o = s div 2;
r = s * 0.65;

var surf = surface_create(s, s);
surface_set_target(surf);
	draw_clear(c_white);
	draw_circle_color(o, o, r, c_black, c_white, 0);
	gpu_set_blendmode(bm_normal);
surface_reset_target();

	
var o = shader_get_uniform(sh_convertalpha, "outputcolor");
shader_set_uniform_f_array(o, [0.0, 0.0, 0.0]);

global.edgeblur_surf = surface_create(view_w, view_h);
surface_set_target(global.edgeblur_surf);
	shader_set(sh_convertalpha);
	draw_surface_ext(surf,0,0, view_w/s, view_h/s, 0, c_white, 1.0);
	shader_reset();
surface_reset_target();

surface_free(surf);