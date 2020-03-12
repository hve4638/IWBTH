///@param alpha
///@param color*
var a = argument[0];
var c = argument_count > 1 ? argument[1] : c_white;

if !surface_exists(global.edgeblur_surf)
{
	surface_edgeblur_create();
}

shader_set(sh_color);
var u_col = shader_get_uniform(sh_color, "u_color");
var arr = coltodec(c);
arr[3] = 1.0;
shader_set_uniform_f_array(u_col, arr);
draw_surface_ext(global.edgeblur_surf, 0, 0, 1, 1, 0, c_white, a);
shader_reset();