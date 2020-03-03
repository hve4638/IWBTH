///@param alpha
///@param color*
var a = argument[0];
var c = argument_count > 1 ? argument[1] : c_white;

if !surface_exists(global.edgeblur_surf)
{
	surface_edgeblur_create();
}

shader_set(shd_replacecolor);
var b = shader_get_uniform(shd_replacecolor, "u_color");
shader_set_uniform_f_array(b, coltodec(c));
draw_surface_ext(global.edgeblur_surf, 0, 0, 1, 1, 0, c_white, a);
shader_reset();