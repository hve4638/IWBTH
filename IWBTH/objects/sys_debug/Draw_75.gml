var str = strmerge("debug enable");

if on_convkey
	str += strmerge("convKey enable");

if on_teleport
	str += strmerge("teleport enable");

if show_info
{
	str += strmerge("time : ", time);
	str += strmerge("death : ", death);
	str += strmerge("mouse(window):", window_mouse_get_x(), window_mouse_get_y());
}

draw_set_reset();
draw_text(0, 0, str);