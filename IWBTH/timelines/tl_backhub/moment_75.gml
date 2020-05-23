if !isgameclear
	global_fade_set(1.0, 0, c_black);
else
	global_fade_set(1.0, 0, c_white);
	
room_goto_alarm(rm_hub, 50, 50);
if !isno(sv_hubx) && !isno(sv_huby)
	player_create_nextroom(sv_hubx, sv_huby);

alarm_trigger(50, enable_keyinput, true, true);
alarm_trigger(50, global_fade_set, [1.0, 0], true);
alarm_trigger(51, global_fade_set, [0.0, 120], true);

cout("back: ", sv_hubx, sv_huby);