ds_init();
name = "I Wanna Be The Hollow";
main_x = room_width div 2;
main_y = room_height div 4;
status = Title.main;

datarenew = queue_create();

select_x = 0;
select_y = 0;
select_ins = list_create();
select_type = list_create();
select_name = list_create();
select_key = list_create();
select_add = list_create();



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
	nothing,
	resolution,
	fullscreen,
	mastervolum,
	musicvolum,
	soundvolum,
	ui
}

enum Select {
	nothing,
	game,
	list,
	goto,
	script,
	toggle,
	scroll,
	click
}