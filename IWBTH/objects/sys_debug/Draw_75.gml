var str = strmerge("debug enable");

if ongod
	str += strmerge("god mode");
if on_convkey
	str += strmerge("convKey enable");

if on_teleport
	str += strmerge("teleport enable");

if on_customview
	str += strmerge("customview enable");

if show_info
{
	str += strmerge("time : ", time);
	str += strmerge("death : ", death);
	str += strmerge("lastkey : ", keyboard_lastkey);
	str += strmerge("mouse(window):", window_mouse_get_x(), window_mouse_get_y());
}

draw_set_reset();
draw_text(0, 0, str);