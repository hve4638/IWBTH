if !isno(sv_room)
{
	with(Player)
		instance_destroy();

	if !sv_auto
	{
		with(instance_create_depth(sv_x, sv_y, 0, obj_create_nextroom))
			look = sv_look;
	}
	
	room_goto(sv_room);

	return 0;
}

return no;