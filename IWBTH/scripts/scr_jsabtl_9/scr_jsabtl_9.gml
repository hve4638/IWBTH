var idx = argument[0];

if idx == 0
{
	with(instance_create_layer(0, room_height, L_BELOW, obj_platform))
	{
		image_xscale = room_width div 32 + 1;	
	}
}

if !tg_on[8]
	return no;

with(obj_platform)
{
	y -= other.tg_idx[8] div 5;
}

return 0;