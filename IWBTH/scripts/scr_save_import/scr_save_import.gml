///@param num*
var idx = argument_count > 0 ? argument[0] : save_idx;
save_idx = idx;

var sv = get_save_index(idx);
sv_auto = sv[? "auto"];
sv_x = sv[? "x"];
sv_y = sv[? "y"];
sv_room = asset_get_index(sv[? "room"]);
sv_look = sv[? "look"];
time = sv[? "time"];
death = sv[? "death"];
stage_time = sv[? "stagetime"];
stage_death = sv[? "stagedeath"];
sv_hubx = sv[? "hubx"];
sv_huby = sv[? "huby"];
stage_clear = sv[? "clearstage"];
boss_firstmeet = sv[? "bossmeet"];