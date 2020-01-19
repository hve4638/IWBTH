///@argu dragun_map
///@argu struct_map
///@argu lock*
var dmap = argument[0];
var smap = argument[1];
var lmap = argument_count > 2 ? argument[2] : no;

for(var i = 0; i < DragunParts.last; i++)
{
	if !ds_map_exists(smap, string(i))
		continue;
	if !isno(lmap) && lmap[? string(i)]
		continue;

	var ins = dmap[? i];
	var m = smap[? string(i)];
	ins.setx = x + m[? "x"] * image_xscale;
	ins.sety = y + m[? "y"] * image_yscale;
	ins.y = y + m[? "y"] * image_yscale;
	ins.sprite_index = m[? "img"];
	
	if !(head_free && i <= DragunParts.neck5)
	{
		ins.x = x + m[? "x"] * image_xscale;
		ins.image_index = m[? "subimg"];
		ins.image_xscale = sign(m[? "xscale"]) * abs(ins.image_xscale);
		ins.image_yscale = sign(m[? "yscale"]) * abs(ins.image_yscale);
	}
}