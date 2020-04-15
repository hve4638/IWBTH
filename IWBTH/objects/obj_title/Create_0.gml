ds_init();
name = "I Wanna Be The Hollow";
main_x = room_width div 2;
main_y = room_height div 4;
status = Title.main;

select_x = 0;
select_y = 0;
selecttype = list_create();
selectname = list_create();
selectidx = list_create();
selectadd = list_create();
selectadd2 = list_create();

draw_set_font(font_perpetua);
strh = STRING_HSIZE;
draw_set_reset();

arr[TitleArray.fullscreen] = fullscreen;
arr[TitleArray.mastervolum] = config_mastervolum  * 100;
arr[TitleArray.musicvolum] = config_music * 100;
arr[TitleArray.soundvolum] = config_sound  * 100;
arr[TitleArray.resolution] = resolution_index;
arr[TitleArray.ui] = config_ui;


blur_alpha = 0.5;
toblur = 0.5;
global_fade_set(1.0, 0, c_black);
global_fade_set(0.0, 75, c_black);

event_user(0);

enum Title {
	start,
	main,
	game,
	option,
	option_audio,
	option_video,
	option_key,
	nothing
}

enum TitleArray {
	nothing = 0,
	resolution,
	fullscreen,
	mastervolum,
	musicvolum,
	soundvolum,
	ui
}