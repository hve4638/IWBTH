switch(trigger_end)
{
	case e_trigger_end.disable:
	{
		trig = false;
		delay = delay_max;
	} break;


	case e_trigger_end.destroy:
	{
		instance_destroy();
	} break;

	case e_trigger_end.loop:
	default:
	break;
}

if 0 < delay
{
	delay--;

	if delay == 0
	{
		enable = true;
		delay = -1;
	}
}