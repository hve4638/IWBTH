//Project creation date : 2019/10/29
//First Published date : 2020/05/29
#macro VERSION 20200530
#macro VERSION_SHOW "v1.01"


#macro CONFIG_DIRECTORY "config"
#macro SAVE_DIRECTORY "data"
#macro SCRIPT_DIRECTORY "data\\script"
#macro RECORD_DIRECTORY "data\\record"
#macro SOUND_DIRECTORY "data\\sounddata"
#macro ROOMDATA_DIRECTORY "data\\roomdata"
#macro DRAGUNCSV_DIRECTORY "data\\dragundata"
#macro DRAGUNATTACKCSV_DIRECTORY "data\\dragunattack"
#macro SAVEMETA_DIRECTORY "data\\save_metadata"

#macro L_SYS "InsSystem"
#macro L_TRIG "InsTrigger"
#macro L_BLOCK "TileBlock"
#macro L_PLAYER "Ins"
#macro L_ABOVE "InsAbove"
#macro L_BELOW "InsBelow"
#macro L_BACKGROUND "InsBackground"

//#macro NULL undefined
#macro NL "\n"
#macro no -1

#macro view_w 1088
#macro view_h 608
#macro BLOCKLAYER layer_tilemap_get_id(layer_get_id("TileBlock"))

///DEBUG
#macro DEBUG_ENABLE false
#macro DEFAULT_INSTANTPLAY 0
#macro INSTANTPLAY_KEY ord("I")
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

#macro STRING_HSIZE string_height(" ")

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
globalvar bgm_p, bgm_ind, bgm_faded, bgm_fadetime;
globalvar boss_firstmeet;

globalvar sv_version, sv_x, sv_y, sv_room, sv_auto, sv_look;
globalvar sv_time, sv_death;
globalvar sv_stagedeath, sv_stagetime, sv_stageclear, sv_bossmeet;
globalvar sv_hubx, sv_huby;

globalvar current_stage;
globalvar stage_time, stage_death, stage_clear;
globalvar result_time, result_death;
globalvar savedata;
globalvar view_ratio;
globalvar roomdata;

#macro onlyexist (instance_number(parent(object_index)) == 1)