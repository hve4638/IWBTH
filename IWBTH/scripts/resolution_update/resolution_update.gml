if fullscreen
{
	win_w = display_get_width();
	win_h = display_get_height();
}
else
{
	if resolution_index < 0
	{
		win_w = resolution_width;
		win_h = resolution_height;
	}
	else
	{
		win_w = global.resolution_w[| resolution_index];
		win_h = global.resolution_h[| resolution_index];
	}
}

window_set_fullscreen(fullscreen);
window_set_size(win_w,win_h);
surface_resize(application_surface,win_w,win_h);
display_set_gui_size(view_w, view_h);

view_ratio = win_w / view_w;
//gpu_set_texfilter(0);
