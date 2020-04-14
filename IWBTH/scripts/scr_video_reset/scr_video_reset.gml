config_video_def();

with(obj_title)
{
	arr[TitleArray.fullscreen] = fullscreen;
	arr[TitleArray.resolution] = resolution_index;
	arr[TitleArray.ui] = config_ui;
	
	event_user(0);
}