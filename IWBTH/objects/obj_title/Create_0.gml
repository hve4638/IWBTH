ds_init();
name = "I Wanna Be The Hollow";
main_x = room_width div 2;
main_y = room_height div 4;
status = Title.main;

datarenew = queue_create();

select_x = 0;
select_y = 0;
select_ins = list_create();
select_temp = list_create();

check_keyboard = false;
onselect_id = noone;
mouse_px = 0;
mouse_py = 0;

blur_alpha = 0.5;
toblur = 0.5;
global_fade_set(1.0, 0, c_black);
global_fade_set(0.0, 75, c_black);

savecheck = array_create(5, false);
for(var i = 1; i <= 3; i++)
	savecheck[i] = save_integrity(i);

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
	pressanykey,
	game,
	list,
	goto,
	script,
	toggle,
	scroll,
	click
}