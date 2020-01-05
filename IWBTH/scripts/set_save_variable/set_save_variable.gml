///@param num*
var idx = argument_count > 0 ? argument[0] : save_idx;
save_idx = idx;

var sv = get_save_index(idx);
sv_auto = sv[? "auto"];
sv_x = sv[? "x"];
sv_y = sv[? "y"];
sv_room = sv[? "room"];
sv_look = sv[? "look"];
sv_time = sv[? "time"];
sv_time = sv[? "death"];