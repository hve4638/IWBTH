if trig
{
	switch(trigger_end)
	{
		case TriggerEnd.disable:
			trig = false;
			delay = delay_max;
		break;

		case TriggerEnd.destroy:
			instance_destroy();
		break;

		case TriggerEnd.loop:
		default:
		break;
	}
}

if 0 < delay
	delay = max(delay-1, 0);

trig_p = trig;