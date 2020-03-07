draw_self();

if oncircle
{
	var idx = circle_idx/circle_time * circle_radius;
	draw_set_circle_precision(64);
	draw_circle_color(x, y, idx, c_yellow, c_yellow, 1);
}