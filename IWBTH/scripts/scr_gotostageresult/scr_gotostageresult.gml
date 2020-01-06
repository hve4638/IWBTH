if goto_idx >= goto_delay
{
	result_death = stage_death[current_stage];
	result_time = stage_time[current_stage];
	room_goto_alarm(rm_stageresult, 90, 0);
	global_fade_set(1.0, 75, c_black);

	instance_destroy();
}

goto_idx++;