if click
{
	switch(type)
	{
		case Select.goto:
			with(obj_title)
			{
				status = other.goto;
				event_user(0);
			}
			ds_queue_enqueue(obj_title.datarenew, datakey);
		break;
		
		case Select.script:
			script_execute(script);
		break;
		
		case Select.toggle:
			toggle = !toggle;
			senddata(datakey, toggle, obj_title.datarenew);
		break;

		case Select.scroll:
		case Select.list:
			with(obj_select)
				enable = false;
		
			onact = true;
			enable = true;
		break;

		case Select.game:
			global_fade_set(1.0, 75, c_black);
			save_idx = save_num;
			with(sys_global)
				audio_sound_gain(bgm_p, 0, 1750);
		
			alarm_trigger(110, global_fade_set, [0.0, 10], true);
			alarm_trigger(110, scr_gamestart, [save_new], true);

			with(instance_create_layer(0, 0, L_SYS, obj_gamestart))
				alarm[0] = 110;

			with(parent_title)
				enable = false;
		break;
	}
}

click = false;