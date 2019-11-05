//gml_pragma( "global", "init();");
randomize();

instance_create_depth(0,0,0,sys_global);
instance_create_depth(0,0,0,sys_sound);

global.roomsound = load_csv("sounddata");

global.savemeta[0] = "x";
global.savemeta[1] = "y";
global.savemeta[2] = "room";
global.savemeta[3] = "look";
global.savemeta[4] = "time";
global.savemeta[5] = "death";

global.resolution_name = ds_list_create();
global.resolution_w = ds_list_create();
global.resolution_h = ds_list_create();

ds_list_add(global.resolution_name, "1024x576", "1088x608", "1280x720", "1366x768", "1600x900", "1920x1080", "2560x1440");
ds_list_add(global.resolution_w, 1024, 1088, 1270, 1366, 1600, 1920, 2560);
ds_list_add(global.resolution_h, 576, 608, 720, 768, 900, 1080, 1440);


config_def();
config_read();

save_read(1);
save_read(2);
save_read(3);

resolution_update();