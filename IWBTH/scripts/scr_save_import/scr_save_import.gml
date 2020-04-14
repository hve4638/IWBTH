/*///@param num*
var idx = argument_count > 0 ? argument[0] : save_idx;
save_idx = idx;

var sv = get_save_index(idx);
<<<<<<< HEAD
sv_auto = sv[? global.savedata_key[Save.Auto]];
sv_x = sv[? global.savedata_key[Save.X]];
sv_y = sv[? global.savedata_key[Save.Y]];
sv_room = asset_get_index(sv[? global.savedata_key[Save.Room]]);
sv_look = sv[? global.savedata_key[Save.Look]];
time = sv[? global.savedata_key[Save.Time]];
death = sv[? global.savedata_key[Save.Death]];
sv_stagetime = sv[? global.savedata_key[Save.Stagetime]];
sv_stagedeath = sv[? global.savedata_key[Save.Stagedeath]];
sv_hubx = sv[? global.savedata_key[Save.Hubx]];
sv_huby = sv[? global.savedata_key[Save.Huby]];
sv_stageclear = sv[? global.savedata_key[Save.Stageclear]];
boss_firstmeet = sv[? global.savedata_key[Save.Bossmeet]];

cout_show(sv_stageclear);
cout_show(sv_stagedeath);
cout_show(boss_firstmeet);
=======
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
<<<<<<< HEAD
boss_firstmeet = sv[? "bossmeet"];
>>>>>>> parent of 2bd79c6... 세이브
=======
boss_firstmeet = sv[? "bossmeet"];
>>>>>>> parent of 2bd79c6... 세이브
