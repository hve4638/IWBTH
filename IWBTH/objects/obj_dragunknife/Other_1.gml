speed = 0;
with(instance_create_layer(x, y, L_PLAYER, obj_knifeguy))
{
	image_xscale = 2;
	image_yscale = 2;

	if room_width div 2 < x
		image_xscale *= -1;
}

instance_destroy();