draw_self();

if oncircle
{
	var idx = merge_value(8, circle_radius, circle_idx/circle_time);
	draw_set_circle_precision(64);
	draw_circle_color(x, y, idx, c_yellow, c_yellow, 1);
}