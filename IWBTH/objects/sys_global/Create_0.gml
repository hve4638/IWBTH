globalvar time, death, save_idx;
globalvar key; //keyconfig
globalvar config_bgm, config_sfx, config_ui;
time = 0;
death = 0;
save_idx = 0;
config_bgm = 1.0;
config_sfx = 1.0;
config_ui = true;

ontimer = false;

savedata[0] = -1;

canrestart = false;
vesion_p = 0;
bgm_p = noone;

time_idx = 0;

/*
	Tip Font: Bookman Old Style
	폰트 맑은고딕 18
*/