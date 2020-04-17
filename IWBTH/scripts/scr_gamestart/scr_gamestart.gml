///@argu newgame*
var new = argument_count > 0 ? argument[0] : 0;
sys_global.alarm[0] = 50 * 60;

if new || !save_integrity()
	scr_save_def();

scr_save_import();
time = sv_time;
death = sv_death;
stage_clear = sv_stageclear;
stage_death = sv_stagedeath;
stage_time = sv_stagetime;
boss_firstmeet = sv_bossmeet;

load();