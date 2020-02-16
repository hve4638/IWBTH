var idx = argument[0];

if idx == 0
{
	with(instance_create_layer(-16, room_height, L_ABOVE, obj_jsabplatform))
	{
		depth -= 1;
		image_xscale = room_width div 32 + 3;
		image_yscale = 64;
		
		w_9p = image_xscale * 2;
		h_9p = image_yscale;
	}
}

if !tg_on[8]
	return no;

with(obj_platform)
{
	y -= other.tg_idx[8] div 5;
}

return 0;