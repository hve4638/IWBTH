///@argu dragun_map
///@argu struct_map
var dmap = argument[0];
var smap = argument[1];

for(var i = 0; i < DragunParts.last; i++)
{
	if !ds_map_exists(smap, string(i))
		continue;
	var ins = dmap[? i];
	var m = smap[? string(i)];
	ins.x = x + m[? "x"] * image_xscale;
	ins.y = y + m[? "y"] * image_yscale;
	ins.sprite_index = m[? "img"];
	ins.image_index = m[? "subimg"];
	ins.image_xscale = sign(m[? "xscale"]) * abs(ins.image_xscale);
	ins.image_yscale = sign(m[? "yscale"]) * abs(ins.image_yscale);
}