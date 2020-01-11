///@argu num
var n = argument[0];
var map = map_arr[n];
ds_map_clear(map);

for(var i = 0; i < DragunParts.last; i++)
{
	var ins = arr[i];
	var m = ds_map_create();
	m[? "x"] = ins.setx;
	m[? "y"] = ins.sety;
	m[? "img"] = floor(ins.sprite_index);
	m[? "subimg"] = floor(ins.image_index);
	m[? "depth"] = floor(ins.depth);
	m[? "xscale"] = ins.image_xscale;
	m[? "yscale"] = ins.image_yscale;
			
	ds_map_add_map(map, string(i), m);
}
map[? "mainx"] = mainx;
map[? "mainy"] = mainy;