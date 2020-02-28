with(obj_danmaku)
{
	switch(type)
	{
		case 1:
			if time_idx == spintime + tindex
			{
				onspin = false;

				direction = direction_to_object(Player);
				speed = 16;
			}
			
			if onspin
			{
				var xx = lengthdir_x(origin_distance, origin_direction);
				var yy = lengthdir_y(origin_distance, origin_direction);
				x = obj_aqua.x + xx;
				y = obj_aqua.y + 16 + yy / 5;
				layer = layer_get_id(yy > 0 ? L_ABOVE : L_BELOW);
				depth = layer_get_depth(layer) + yy div 10;
				
				
				var v = merge_value(0, 1.0, (yy + origin_distance) / (origin_distance * 2));
				image_xscale = 0.7 + 0.2 * v;
				image_yscale = image_xscale;
				origin_distance = min(origin_distance + 3, 48 + 8);
				origin_direction += 5;
				alpha = min(alpha + 0.05, 1.0);
				
				image_alpha = (alpha * 0.55) + (alpha * 0.45) * v;
			}
			else
			{
				image_alpha += 0.015;
				image_xscale = min(image_xscale + 0.03, 0.9);
				image_yscale = image_xscale;
			}
		break;
	}

	time_idx++;
}