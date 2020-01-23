if goto_idx >= goto_delay
{
	result_death = stage_death[current_stage];
	result_time = stage_time[current_stage];
	//room_goto_alarm(rm_stageresult, 90, 0);
	
	with(instance_create_layer(0, 0, L_SYS, obj_stageresult))
	{
		fadd = 0.02;
		depth -= 100;
		alarm[0] = 10;
	}
	
	//global_fade_set(0.75, 75, c_black);
	instance_destroy(obj_effect_providience);
	instance_destroy();
}

goto_idx++;