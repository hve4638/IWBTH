config_video_def();

with(sys_title)
{
	arr[TitleArray.fullscreen] = fullscreen;
	arr[TitleArray.resolution] = resolution_index;
	arr[TitleArray.ui] = config_ui;
	
	event_user(0);
}