///@desc wave1
for(var i = 0; i < 32; i++)
{
	with(instance_create_layer(0, room_width / 7 * i, L_ABOVE, obj_jsablaser))
	{
		life_create(10000);
		onbounce = true;
		bounce_cycle = 40;
		bounce_index = 75 / 7 * i;
		thick = 4;
		length = 128;
		image_alpha = 1;
		image_angle = 90;
	}
}

