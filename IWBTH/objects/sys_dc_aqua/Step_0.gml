with(obj_danmaku)
{
	switch(type)
	{
		case 1:
			if time_idx < 75
			{
				x = obj_aqua.x + lengthdir_x(origin_distance, origin_direction);
				y = obj_aqua.y + lengthdir_y(origin_distance, origin_direction);
				
				origin_direction++;
			}
		break;
	}

	time_idx++;
}