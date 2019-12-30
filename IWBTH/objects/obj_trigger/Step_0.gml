var t_on, t, t_off;
t_on = false; t = false; t_off = false;

if enable && 0 < delay
{
	switch(trigger_condition)
	{
		case TriggerCondition.target:
			if instance_exists(target) && place_meeting(x, y, target)
				trig = true;
		break;
	}
	
	if trig != trig_p
	{
		if trig
			t_on = true;

		if !trig && script_exists(trigger_script_off)
			t_off = true;
	}

	if trig && script_exists(trigger_script)
		t = true;
	
	trig = trig_p;
}

if t_on && script_exists(trigger_script_on)
	script_execute(trigger_script_on);

if t && script_exists(trigger_script)
	script_execute(trigger_script);

if t_off && script_exists(trigger_script_off)
	script_execute(trigger_script_off);










