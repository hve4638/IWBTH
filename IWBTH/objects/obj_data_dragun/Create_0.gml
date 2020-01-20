onlyexist
ds_init();

#region
st_default = json_decode(csv_get(global.csv_dragun, "idle"));
st_handout = json_decode_list(csv_get(global.csv_dragun, "handout"));
st_gunget = json_decode_list(csv_get(global.csv_dragun, "gunget"));
st_gunout_front = json_decode_list(csv_get(global.csv_dragun, "gunout_front"));
st_gunout_side = json_decode_list(csv_get(global.csv_dragun, "gunout_side"));
st_gunshoot_front = json_decode_list(csv_get(global.csv_dragun, "gunshoot_front"));
st_gunshoot_side = json_decode_list(csv_get(global.csv_dragun, "gunshoot_side"));
st_guntwirl_stof = json_decode_list(csv_get(global.csv_dragun, "guntrwil_stof"));
st_guntwirl_ftos = json_decode_list(csv_get(global.csv_dragun, "guntrwil_ftos"));
st_gunoutro = json_decode_list(csv_get(global.csv_dragun, "gunoutro"));

st_headshoot = json_decode_list(csv_get(global.csv_dragun, "headshoot"));

st_macget = json_decode_list(csv_get(global.csv_dragun, "macget"));
st_macshoot = json_decode_list(csv_get(global.csv_dragun, "macshoot"));

st_rpgget = json_decode_list(csv_get(global.csv_dragun, "rpgget"));
st_rpgout = json_decode_list(csv_get(global.csv_dragun, "rpgout"));
st_rpgshoot = json_decode_list(csv_get(global.csv_dragun, "rpgshoot"));
st_rpgoutro = json_decode_list(csv_get(global.csv_dragun, "rpgoutro"));

lock_leftarm = json_decode(csv_get(global.csv_dragun, "lock_leftarm"));
lock_rightarm = json_decode(csv_get(global.csv_dragun, "lock_rightarm"));
lock_arms = json_decode(csv_get(global.csv_dragun, "lock_arms"));
lock_neck = json_decode(csv_get(global.csv_dragun, "lock_neck"));
#endregion

#region
var map = map_create();
var h, g;
g = global.csv_dragunattack;
h = ds_grid_height(g);
for(var i = 1; i < h; i++)
{
	var idx = asset_get_index(g[# 0, i]);
	var sub = g[# 1, i];
	
	if isno(idx)
		continue;
		
	if string(sub) == "x"
		continue;

	if is_undefined(map[? idx])
		map[? idx] = map_create();

	var m = map[? idx];
	m[? real(sub)] = [real(g[# 2, i]), real(g[# 3, i]), real(g[# 4, i]), real(g[# 5, i])];
	cout(g[# 0, i], ": ", sub, " (", m[? real(sub)], ")");
}

map_attackpos = map;
//global.csv_dragunattack
#endregion


scr_dragun_motion();

//cout("tlqkf");
//show_debug_message(string("create:") + string(variable_instance_get(id, "lock_leftarm3")));