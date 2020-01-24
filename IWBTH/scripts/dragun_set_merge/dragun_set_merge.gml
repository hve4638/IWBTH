///@argu dragun_map
///@argu struct_map1
///@argu struct_map2
///@argu percentage
///@argu lock*
var dmap = argument[0];
var smap = argument[1];
var smap2 = argument[2];
var v = argument[3];
var lmap = argument_count > 4 ? argument[4] : no;

if !is_real(smap2)
{
	dragun_set(dmap, smap, lmap);
	return -1;
}
//else
//	cout(":", smap, smap2, v);


for(var i = 0; i < DragunParts.last; i++)
{
	if !ds_map_exists(smap, string(i)) || !ds_map_exists(smap2, string(i))
		continue;
	if !isno(lmap) && lmap[? string(i)]
		continue;

	var ins = dmap[? i];
	var m = smap[? string(i)];
	var m2 = smap2[? string(i)];
	ins.setx = x + value_merge(m[? "x"], m2[? "x"], v) * image_xscale;
	ins.sety = y + value_merge(m[? "y"], m2[? "y"], v) * image_yscale;
	ins.y = ins.sety;
	ins.sprite_index = asset_get_index(global.previous_sprite[? m[? "img"]]);
	
	if !(head_free && i <= DragunParts.neck5)
	{
		ins.x = ins.setx;
		ins.image_index = m[? "subimg"];
		ins.image_xscale = sign(m[? "xscale"]) * abs(ins.image_xscale);
		ins.image_yscale = sign(m[? "yscale"]) * abs(ins.image_yscale);
	}

	if i == DragunParts.head
		ins.image_index = m[? "subimg"];
}