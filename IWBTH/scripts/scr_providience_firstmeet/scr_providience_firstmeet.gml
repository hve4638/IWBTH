if !is_bossmeet()
{
	//bossmeet();
	save();
	instance_destroy();
}
	/*
switch(time_idx)
{
	case 0:
		sys_global.canrestart = false;
		with(obj_player)
			frozen = true;

		with(sys_camera)
		{
			ds_list_clear(follow);
			ds_list_add(follow, obj_providience);
		}
		
		with(obj_providience)
			sprite_change(spr_providience_seat1);
	break;

	case 100:
		with(sys_camera)
		{
			ds_list_clear(follow);
			ds_list_add(follow, obj_player, obj_create);
		}
	break;

	case 120:
		sys_global.canrestart = true;
		with(obj_player)
			frozen = false;
		
		with(obj_providience)
			sprite_change(spr_providience_idle);

		save();
		bossmeet();
		instance_destroy();
	break;
}*/