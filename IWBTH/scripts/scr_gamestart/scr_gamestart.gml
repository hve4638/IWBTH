sys_global.alarm[0] = 50 * 60 * 5;

if !save_integrity()
	scr_save_def();


scr_save_import();
load();