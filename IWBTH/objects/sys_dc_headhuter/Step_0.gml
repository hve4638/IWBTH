with(obj_danmaku)
{
	switch(type)
	{
		case 1:
			var d = min(point_distance(x, y, xstart, ystart), 86);
			
			sprite_set_size(d, 2);
		break;
	}

	time_idx++;
}