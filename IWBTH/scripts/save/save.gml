if instance_exists(obj_player)
{
	sv_x = obj_player.x;
	sv_y = obj_player.y;
	sv_look = obj_player.look;
	sv_auto = false;
}
else
{
	sv_x = 0;
	sv_y = 0;
	sv_look = 1;
	sv_auto = true;
}
sv_room = room;
sv_time = time;
sv_death = death;
sv_stageclear = stage_clear;
sv_stagetime = stage_time;
sv_stagedeath = stage_death;
sv_bossmeet = boss_firstmeet;