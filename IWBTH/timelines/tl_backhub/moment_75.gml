global_fade_set(1.0, 0, c_black);
room_goto_alarm(rm_hub, 50, 50);
player_create_nextroom(sv_hubx, sv_huby);
alarm_trigger(50, enable_keyinput, true, true);

cout("back: ", sv_hubx, sv_huby);