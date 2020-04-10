var b = false;
with(obj_radiance)
{
	if canenter3phase
	{
		rand_reset(Rmotion.lastmissile);
		b = true;
		
		tele_top = 224;
		tele_bottom = 224;
		tele_left = 470;
		tele_right = 1120;
		canenter3phase = false;
		bossphase = 6;
		onlastlaser = false;
		
		with(sys_camera)
			ds_list_add(follow, obj_radiance);
		todo_play(motion[Rmotion.tele]);
	}
}

if b
	instance_destroy();