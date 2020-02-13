///@desc wave
for(var i = 0; i < 8; i++)
{
	with(instance_create_layer(room_width / 7 * i, 0, L_ABOVE, obj_jsablaser))
	{
		life_create(10000);
		onbounce = true;
		bounce_cycle = 40;
		bounce_index = 75 / 7 * i;
		thick = 4;
		length = 112;
		image_alpha = 1;
	}
		
	with(instance_create_layer(room_width / 7 * i, room_height, L_ABOVE, obj_jsablaser))
	{
		life_create(10000);
		onbounce = true;
		bounce_cycle = 40;
		bounce_index = 75 / 7 * i;
		thick = 4;
		length = 112;
		image_alpha = 1;
		image_angle = 180;
	}
}