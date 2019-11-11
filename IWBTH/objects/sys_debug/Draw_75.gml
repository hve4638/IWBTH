var str = "";


str += strmerge("debug enable");

if on_convkey
	str += strmerge("ConvKey enable");

if show_info
{
	str += strmerge("mouse(gui):", display_mouse_get_x(), display_mouse_get_y());
	str += strmerge("mouse(window):", window_mouse_get_x(), window_mouse_get_y());
}


draw_set_reset();

draw_text(0, 0, str);