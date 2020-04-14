/*///@param num*
var sv, idx;
idx = argument_count > 0 ? argument[0] : save_idx;

sv = get_save_index();
sv[? "version"] = VERSION;
sv[? "auto"] = sv_auto;
sv[? "x"] = sv_x;
sv[? "y"] = sv_y;
sv[? "room"] = room_get_name(sv_room);
sv[? "look"] = sv_look;
sv[? "time"] = time;
sv[? "death"] = death;
sv[? "stagetime"] = stage_time;
sv[? "stagedeath"] = stage_death;
sv[? "hubx"] = sv_hubx;
sv[? "huby"] = sv_huby;
sv[? "clearstage"] = stage_clear;
sv[? "bossmeet"] = boss_firstmeet;

save_write();