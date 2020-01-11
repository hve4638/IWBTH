///@argu num
var n = argument[0];
var map = map_arr[n];

for(var i = 0; i < DragunParts.last; i++)
{
	if !ds_map_exists(map, string(i))
		continue;

	var ins = arr[i];
	var m = map[? string(i)];
	ins.setx = m[? "x"];
	ins.sety = m[? "y"];
	ins.sprite_index = m[? "img"];
	ins.image_index = m[? "subimg"];
	ins.image_xscale = m[? "xscale"];
	ins.image_yscale = m[? "yscale"];
}
mainx = map[? "mainx"];
mainy = map[? "mainy"];

var ins = arr[DragunParts.body];
ins.setx = 0;
ins.sety = 0;