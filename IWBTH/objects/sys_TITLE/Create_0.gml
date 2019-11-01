name = "I Wanna Be The Hollow";
main_x = room_width div 2;
main_y = room_height div 4;

status = Title.main;

select_x = 0;
select_y = 0;
selecttype = ds_list_create();
selectname = ds_list_create();
selectidx = ds_list_create();
selectadd = ds_list_create();
selectadd2 = ds_list_create();

draw_set_font(font_perpetua);
strh = string_height(" ");
draw_set_reset();

arr[TitleArray.fullscreen] = fullscreen;
arr[TitleArray.mastervolum] = config_mastervolum  * 100;
arr[TitleArray.musicvolum] = config_music * 100;
arr[TitleArray.soundvolum] = config_sound  * 100;
arr[TitleArray.resolution] = resolution_index;
arr[TitleArray.ui] = config_ui;


global_fade_set(1.0, c_black);
global_fade_add(-0.02);

event_user(0);