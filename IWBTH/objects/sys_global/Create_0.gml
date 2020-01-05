globalvar time, death, save_idx, difficulty;
globalvar key; //keyconfig
globalvar config_mastervolum, config_music, config_sound, config_ui, fullscreen;
globalvar resolution_index, resolution_width, resolution_height;
globalvar volum_music, volum_sound;
globalvar win_h, win_w;
globalvar savedata;
globalvar sv_auto, sv_x, sv_y, sv_room, sv_look, sv_time, sv_death;
globalvar enablekeyinput;
globalvar each_volum;

globalvar ongod;
ongod = false;

globalvar view_ratio;
view_ratio = 1.0;


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

canrestart = false;
vesion_p = 0;
bgm_p = noone;

enablekeyinput = true;

fade_alpha = 0.0;
fade_alpha_p = 0.0;
fade_alpha_to = 0.0;
fade_idx = 0;
fade_time = 0;

fade_color = c_black;
fade_add = 0;

intro_x = 0;
intro_y = 0;
intro_spr = 0;
intro_time = 0;
intro_alpha = 0;

show_bosshp = false;
bosshp = 0;
bosshp_ins = noone;