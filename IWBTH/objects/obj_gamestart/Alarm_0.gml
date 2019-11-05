if !save_integrity()
	save_def();

//global_fade_set();
global_fade_add(-0.1);
sys_global.ontimer = true;

set_save_variable();

load();
