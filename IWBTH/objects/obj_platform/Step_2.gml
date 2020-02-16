if instance_exists(obj_player)
{
	if collision_rectangle(bbox_left, bbox_top - 48, bbox_right, bbox_bottom + 48, obj_player, 1, 0) != noone
	{
		if playery <= y - 1
		{
			if y - 1 < obj_player.bbox_bottom
			{
				obj_player.y = y - 1 - (obj_player.bbox_bottom - obj_player.y);
				obj_player.on_platform = true;
				obj_player.vspd = 0;
			}
		}
	}

	playery = obj_player.y;
}

