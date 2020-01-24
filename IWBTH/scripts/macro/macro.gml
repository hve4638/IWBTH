//Project creation date : 2019/10/29

#macro VERSION 20191029
#macro CONFIG_DIRECTORY "config"
#macro SAVE_DIRECTORY "data"
#macro SCRIPT_DIRECTORY "script"
#macro RECORD_DIRECTORY "record"
#macro SOUND_DIRECTORY "sounddata"
#macro ROOMDATA_DIRECTORY "roomdata"
#macro DRAGUNCSV_DIRECTORY "dragundata"
#macro DRAGUNATTACKCSV_DIRECTORY "dragunattack"

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

#macro DEFAULT_INSTANTPLAY false
#macro INSTANTPLAY_SAVESLOT 1
#macro DEFAULT_COUTSHOW false
#macro DEFAULT_FPS 50

#macro RMDATA_STAGE 0
#macro RMDATA_SOUND 1
#macro RMDATA_SOUNDLOOP 2
#macro RMDATA_INGAME 3
#macro RMDATA_WIDTH 4

#macro onlyexist if 1 < instance_number(object_index)\
{\
	instance_destroy();\
	exit;\
}\