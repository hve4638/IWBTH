if room_exists(sv_room)
{
	with(obj_player)
		instance_destroy();
	
	if !sv_auto
	{
		with(instance_create_layer(sv_x, sv_y, L_ABOVE, obj_create_nextroom))
			look = sv_look;
		cout("AUTOCREATE");
	}
	room_goto(sv_room);

	return 0;
}

return -1;