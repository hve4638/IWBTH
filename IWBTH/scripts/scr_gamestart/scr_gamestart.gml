sys_global.canrestart = true;
sys_global.ontimer = true;

if !save_integrity()
	scr_save_def();

scr_save_import();
load();