global.roomsound = load_csv(SOUND_DIRECTORY);
global.csv_room = load_csv(ROOMDATA_DIRECTORY);
global.textscript = load_csv(SCRIPT_DIRECTORY);
global.record = load_json(RECORD_DIRECTORY);
global.csv_dragun = load_csv(DRAGUNCSV_DIRECTORY);

globalvar roomdata;
roomdata = ds_grid_create(RMDATA_WIDTH, room_count);

for(var i = 0; i < room_count; i++)
{
	roomdata[# RMDATA_SOUND, i] = no;
	roomdata[# RMDATA_SOUNDLOOP, i] = false;
	roomdata[# RMDATA_STAGE, i] = 0;
}

var snd, rm, sndloop, stage,
var w, h;
w = ds_grid_width(global.csv_room);
h = ds_grid_height(global.csv_room);
rm = ds_grid_value_x(global.csv_room, 0, 0, w - 1, 0, "#ROOM");
snd = ds_grid_value_x(global.csv_room, 0, 0, w - 1, 0, "#SOUND");
sndloop = ds_grid_value_x(global.csv_room, 0, 0, w - 1, 0, "#SOUNDLOOP");
stage = ds_grid_value_x(global.csv_room, 0, 0, w - 1, 0, "#STAGE");

for(var i = 0; i < h; i++)
{
	var idx = asset_get_index(global.csv_room[# rm, i]);

	roomdata[# RMDATA_SOUND, idx] = asset_get_index(global.csv_room[# snd, i]);
	roomdata[# RMDATA_SOUNDLOOP, idx] = global.csv_room[# sndloop, i];
	roomdata[# RMDATA_STAGE, idx] = global.csv_room[# stage, i];
}



global.savemeta[0] = "x";
global.savemeta[1] = "y";
global.savemeta[2] = "room";
global.savemeta[3] = "look";
global.savemeta[4] = "time";
global.savemeta[5] = "death";
global.savemeta[6] = "stagetime";
global.savemeta[7] = "stagedeath";
global.savemeta[8] = "hubx";
global.savemeta[9] = "huby";

global.resolution_name = global_list_create();
global.resolution_w = global_list_create();
global.resolution_h = global_list_create();
ds_list_add(global.resolution_name, "1024x576", "1088x608", "1280x720", "1366x768", "1600x900", "1920x1080", "2560x1440");
ds_list_add(global.resolution_w, 1024, 1088, 1270, 1366, 1600, 1920, 2560);
ds_list_add(global.resolution_h, 576, 608, 720, 768, 900, 1080, 1440);

global.todolist = ds_map_create();
global.todoedit = -1;
global.edgeblur_surf = -1;

each_volum = global_map_create();
var index = 0;
for(var i = 0; i < sound_count; i++)
	each_volum[? index++] = 1.0;

each_volum[? snd_shoot] = 0.6;
each_volum[? snd_dash] = 0.75;
each_volum[? snd_jump] = 0.75;
each_volum[? snd_jump2] = 0.75;
each_volum[? snd_magic_blast2] = 0.75;