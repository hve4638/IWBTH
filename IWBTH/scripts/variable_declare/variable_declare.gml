global.roomsound = load_csv(SOUND_DIRECTORY);
global.textscript = load_csv(SCRIPT_DIRECTORY);
global.record = load_json(RECORD_DIRECTORY);

global.savemeta[0] = "x";
global.savemeta[1] = "y";
global.savemeta[2] = "room";
global.savemeta[3] = "look";
global.savemeta[4] = "time";
global.savemeta[5] = "death";

global.resolution_name = global_list_create();
global.resolution_w = global_list_create();
global.resolution_h = global_list_create();
ds_list_add(global.resolution_name, "1024x576", "1088x608", "1280x720", "1366x768", "1600x900", "1920x1080", "2560x1440");
ds_list_add(global.resolution_w, 1024, 1088, 1270, 1366, 1600, 1920, 2560);
ds_list_add(global.resolution_h, 576, 608, 720, 768, 900, 1080, 1440);

global.edgeblur_surf = -1;

global.todolist = ds_map_create();
global.todoedit = -1;

each_volum = global_map_create();

var index = 0;
while(audio_exists(index))
	each_volum[? index++] = 1.0;

each_volum[? snd_shoot] = 0.6;
each_volum[? snd_dash] = 0.75;
each_volum[? snd_jump] = 0.75;
each_volum[? snd_jump2] = 0.75;