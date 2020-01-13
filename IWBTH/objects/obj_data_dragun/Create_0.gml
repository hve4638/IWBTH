onlyexist
ds_init();

st_default = json_decode(csv_get(global.csv_dragun, "idle"));
st_gunget = json_decode_list(csv_get(global.csv_dragun, "gunget"));
st_gunout_front = json_decode_list(csv_get(global.csv_dragun, "gunout_front"));
st_gunout_side = json_decode_list(csv_get(global.csv_dragun, "gunout_side"));
st_gunshoot_front = json_decode_list(csv_get(global.csv_dragun, "gunshoot_front"));
st_gunshoot_side = json_decode_list(csv_get(global.csv_dragun, "gunshoot_side"));
st_guntwirl_stof = json_decode_list(csv_get(global.csv_dragun, "guntrwil_stof"));
st_guntwirl_ftos = json_decode_list(csv_get(global.csv_dragun, "guntrwil_ftos"));

lock_leftarm = json_decode(csv_get(global.csv_dragun, "lock_leftarm"));
lock_rightarm = json_decode(csv_get(global.csv_dragun, "lock_rightarm"));
lock_arms = json_decode(csv_get(global.csv_dragun, "lock_arms"));

//cout("tlqkf");
//show_debug_message(string("create:") + string(variable_instance_get(id, "lock_leftarm3")));