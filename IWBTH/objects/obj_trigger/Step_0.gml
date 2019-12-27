if enable 
{
	switch(trigger_condition)
	{
		case e_trigger_condition.target:
		{
			if instance_exists(target) && place_meeting(x, y, target)
				trig = true;
		} break;
	}
	
	if trig != trig_p
	{
		if trig && script_exists(trigger_script_on)
		script_execute(trigger_script_on);

		if !trig && script_exists(trigger_script_off)
		script_execute(trigger_script_off);
	}

	if trig && script_exists(trigger_script)
		script_execute(trigger_script);
	
	trig = trig_p;
}