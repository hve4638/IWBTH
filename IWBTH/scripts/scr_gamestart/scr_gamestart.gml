sys_global.canrestart = true;
sys_global.ontimer = true;

if !save_integrity()
	save_def();

set_save_variable();
load();