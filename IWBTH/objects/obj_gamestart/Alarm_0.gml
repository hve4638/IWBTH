if !save_integrity()
	save_def();

global_fade_set(0.0, 10);
sys_global.ontimer = true;

set_save_variable();

load();
