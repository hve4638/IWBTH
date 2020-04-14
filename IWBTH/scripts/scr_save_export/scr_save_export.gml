///@param num*
var sv, idx;
idx = argument_count > 0 ? argument[0] : save_idx;

sv = get_save_index();
sv[? global.savedata_key[Save.Version]] = VERSION;
sv[? global.savedata_key[Save.Auto]] = sv_auto;
sv[? global.savedata_key[Save.X]] = sv_x;
sv[? global.savedata_key[Save.Y]] = sv_y;
sv[? global.savedata_key[Save.Room]] = room_get_name(sv_room);
sv[? global.savedata_key[Save.Look]] = sv_look;
sv[? global.savedata_key[Save.Time]] = sv_time;
sv[? global.savedata_key[Save.Death]] = sv_death;
sv[? global.savedata_key[Save.Stagetime]] = sv_stagetime;
sv[? global.savedata_key[Save.Stagedeath]] = sv_stagedeath;
sv[? global.savedata_key[Save.Hubx]] = sv_hubx;
sv[? global.savedata_key[Save.Huby]] = sv_huby;
sv[? global.savedata_key[Save.Stageclear]] = sv_stageclear;
sv[? global.savedata_key[Save.Bossmeet]] = sv_bossmeet;

save_write();