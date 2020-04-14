cout("game autosave...");
if 0 < save_idx
{
	sv_time = time;
	sv_death = death;
	sv_stageclear = stage_clear;
	sv_stagetime = stage_time;
	sv_stagedeath = stage_death;
	sv_bossmeet = boss_firstmeet;

	scr_save_export();
	cout("save complete!");
}

alarm[0] = DEFAULT_FPS * 60;