if save_integrity()
{
	var _x, _y, _r, _l;
	var sv = get_save();

	with(Player)
		instance_destroy();

	_x = sv[? "x"];
	_y = sv[? "y"];
	_r = sv[? "room"];
	_l = sv[? "look"];
		
	if !sv[? "auto"]
	{
		with(instance_create_depth(_x, _y, 0, obj_create_nextroom))
		{
			look = _l;
		}
	}

	room_goto(_r);
}