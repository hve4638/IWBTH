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
	
	if trig && script_exists(trigger_script)
		script_execute(trigger_script);
}
