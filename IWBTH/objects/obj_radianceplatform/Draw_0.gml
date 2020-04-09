if white_alpha > 0.0
{
	var arr = [1.0, 1.0, 1.0, white_alpha];
	shader_set(sh_color);

	var col = shader_get_uniform(sh_color, "u_color");
	shader_set_uniform_f_array(col, arr);
}
draw_self();

shader_reset(); 