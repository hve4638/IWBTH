if show_dps && dps != 0
{
	draw_set_halign(1);
	draw_set_valign(2);
	draw_set_color(c_black);
	draw_text(x, bbox_top, "dps: " + string(dps));
}