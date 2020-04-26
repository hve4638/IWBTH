var b = false;
with(obj_radiance)
{
	if canenter3phase
	{
		rand_reset(Rmotion.lastmissile);
		b = true;
		
		tele_top = 224 + 64;
		tele_bottom = 224 + 64;
		tele_left = 470;
		tele_right = 1120;
		canenter3phase = false;
		bossphase = 6;
		onlastlaser = false;
		
		instance_destroy(obj_lasergener_radiance);
		instance_destroy(obj_laser);
		
		camera_set_yrange(550 - view_h, 550);

		with(sys_camera)
		{
			ds_list_clear(follow);
			ds_list_add(follow, obj_radiance, Player);
		}
		todo_play(motion[Rmotion.tele]);
		
		deadline_y = 550;
	}
}

if b
	instance_destroy();