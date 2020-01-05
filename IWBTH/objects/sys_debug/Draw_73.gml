if on_customview
{
	if keyboard_check(vk_control)
	{
		draw_set_color(c_yellow);
		draw_rectangle(cv_x1, cv_y1, cv_x2, cv_y1 + (cv_x2 - cv_x1) * view_h / view_w, true);
	}
}