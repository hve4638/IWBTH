//gml_pragma( "global", "init();");
randomize();

instance_create_depth(0,0,-10000,sys_global);
instance_create_depth(0,0,-10000,sys_sound);
instance_create_depth(0,0,-10000,sys_particle);

variable_declare();

config_def();
config_read();

save_read(1);
save_read(2);
save_read(3);

resolution_update();