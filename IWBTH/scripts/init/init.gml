//gml_pragma( "global", "init();");
//gpu_set_tex_filter(false);
randomize();

instance_create_depth(0,0,-10000,sys_global);
instance_create_depth(0,0,-10000,sys_sound);
instance_create_depth(0,0,-10000,sys_particle);

variable_declare();

//arr = layer_get_all();
room_speed = 50;

config_def();
config_read();

save_read(1);
save_read(2);
save_read(3);

volum_update();
resolution_update();