globalvar time, death, save_idx, difficulty;
globalvar key; //keyconfig
globalvar config_mastervolum, config_music, config_sound, config_ui, fullscreen;
globalvar resolution_index, resolution_width, resolution_height;
globalvar volum_music, volum_sound;
globalvar win_h, win_w;
globalvar savedata;
globalvar sv_auto, sv_x, sv_y, sv_room, sv_look, sv_time, sv_death;

time = 0;
death = 0;
save_idx = 0;
difficulty = Difficulty.hard;

time_idx = 0;
ontimer = false;

volum_sound = 1.0;
volum_music = 1.0;

savedata[0] = -1;
savedata[1] = -1;
savedata[2] = -1;
savedata[3] = -1;

canrestart = true;
vesion_p = 0;
bgm_p = noone;


fade_alpha = 0.0;
fade_color = c_black;
fade_add = 0;


