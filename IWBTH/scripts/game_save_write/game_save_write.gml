///@param num
var sv, idx;
idx = argument_count > 0 ? argument[0] : save_idx;

sv = get_save_index();
sv[? "auto"] = sv_auto;
sv[? "x"] = sv_x;
sv[? "y"] = sv_y;
sv[? "room"] = sv_room;
sv[? "look"] = sv_look;
sv[? "time"] = time;
sv[? "death"] = death;

save_write();