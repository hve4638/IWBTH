if enable
{
	if delay == 0
	{
		switch(trigger_condition)
		{
			case TriggerCondition.target:
				if instance_exists(target) && place_meeting(x, y, target)
					trig = true;
			break;
		
			case TriggerCondition.always:
				trig = true;
			break;
		}
	}

	var t_on, t, t_off;
	t = trig ? true : false;
	t_on = trig != trig_p && trig ? true : false;
	t_off = trig != trig_p && !trig ? true : false;

	if t_on && script_exists(trigger_script_on)
		script_execute(trigger_script_on);

	if t && script_exists(trigger_script)
		script_execute(trigger_script);

	if t_off && script_exists(trigger_script_off)
		script_execute(trigger_script_off);
}