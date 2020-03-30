//Project creation date : 2019/10/29
#macro VERSION 20191029
#macro VERSION_SHOW "test1"

#macro CONFIG_DIRECTORY "config"
#macro SAVE_DIRECTORY "data"
#macro SCRIPT_DIRECTORY "script"
#macro RECORD_DIRECTORY "record"
#macro SOUND_DIRECTORY "sounddata"
#macro ROOMDATA_DIRECTORY "roomdata"
#macro DRAGUNCSV_DIRECTORY "dragundata"
#macro DRAGUNATTACKCSV_DIRECTORY "dragunattack"
#macro SAVEMETA_DIRECTORY "save_metadata"

#macro L_SYS "InsSystem"
#macro L_TRIG "InsTrigger"
#macro L_BLOCK "TileBlock"
#macro L_PLAYER "Ins"
#macro L_ABOVE "InsAbove"
#macro L_BELOW "InsBelow"
#macro L_BACKGROUND "InsBackground"

#macro NULL undefined
#macro NL "\n"
#macro no -1

#macro view_w 1088
#macro view_h 608
#macro BLOCKLAYER layer_tilemap_get_id(layer_get_id("TileBlock"))

///DEBUG
#macro DEFAULT_INSTANTPLAY 0
#macro INSTANTPLAY_KEY ord("P")
#macro INSTANTPLAY_SAVESLOT 1
#macro DEFAULT_COUTSHOW false
#macro DEFAULT_FPS 50

#macro RMDATA_STAGE 0
#macro RMDATA_SOUND 1
#macro RMDATA_SOUNDLOOP 2
#macro RMDATA_INGAME 3
#macro RMDATA_WIDTH 4

#macro c_jsab make_color_rgb(251,30,110)

#macro blendmode gpu_set_blendmode

globalvar pause, window_surf; //pause
globalvar time, death, save_idx, difficulty; //save data
globalvar key; //keyconfig
globalvar config_mastervolum, config_music, config_sound, config_ui, fullscreen;
globalvar resolution_index, resolution_width, resolution_height;
globalvar volum_music, volum_sound;
globalvar win_h, win_w;
globalvar enablekeyinput;
globalvar each_volum; //각 볼륨크기
globalvar ongod;
globalvar bgm_p, bgm_ind;
globalvar boss_firstmeet;

globalvar sv_auto, sv_x, sv_y, sv_room, sv_look, sv_time, sv_death; //temp save
globalvar sv_hubx, sv_huby;
globalvar current_stage;
globalvar stage_time, stage_death, stage_clear;
globalvar result_time, result_death;
globalvar savedata;
globalvar view_ratio;
globalvar roomdata;


#macro onlyexist if 1 < instance_number(object_index)\
{\
	instance_destroy();\
	exit;\
}\