randomize();

instance_create(0,0,sys_global);
instance_create(0,0,sys_part);
instance_create(0,0,sys_sound);

global.roomsound = load_csv("sounddata");

global.savemeta[0] = "x";
global.savemeta[1] = "y";
global.savemeta[2] = "room";
global.savemeta[3] = "look";

//global.win_w = 1280;
//global.win_h = 720;
global.win_w = 1088;
global.win_h = 608;

resolution_update();

if !config_read()
	config_def();
save_read(0);