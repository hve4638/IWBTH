if sv_room != rm_boss_providience || point_distance(sv_x, sv_y, obj_player.x, obj_player.y) > 256
	save();

cout("svroom:", sv_room != rm_boss_providience);
cout("svpos:", point_distance(sv_x, sv_y, obj_player.x, obj_player.y) > 256, "  ", point_distance(sv_x, sv_y, obj_player.x, obj_player.y));
