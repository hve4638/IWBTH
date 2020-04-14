///@param num*
var idx = argument_count > 0 ? argument[0] : save_idx;
save_idx = idx;

var sv = get_save_index(idx);
sv_version = sv[? global.savedata_key[Save.Version]];
sv_auto = sv[? global.savedata_key[Save.Auto]];
sv_x = sv[? global.savedata_key[Save.X]];
sv_y = sv[? global.savedata_key[Save.Y]];
sv_room = asset_get_index(sv[? global.savedata_key[Save.Room]]);
sv_look = sv[? global.savedata_key[Save.Look]];
sv_time = sv[? global.savedata_key[Save.Time]];
sv_death = sv[? global.savedata_key[Save.Death]];
sv_stagetime = sv[? global.savedata_key[Save.Stagetime]];
sv_stagedeath = sv[? global.savedata_key[Save.Stagedeath]];
sv_stageclear = sv[? global.savedata_key[Save.Stageclear]];
sv_hubx = sv[? global.savedata_key[Save.Hubx]];
sv_huby = sv[? global.savedata_key[Save.Huby]];
sv_bossmeet = sv[? global.savedata_key[Save.Bossmeet]];