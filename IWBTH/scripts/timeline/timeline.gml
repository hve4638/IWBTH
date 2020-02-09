///@argu index*
///@argu position* 

if argument_count == 0
{
    timeline_running = false;
}
else
{
	var ind, t;
	ind = argument[0];
	t = argument_count > 1 ? argument[1] : 0;

	timeline_index = argument[0];
	timeline_position = t;
	timeline_speed = 1;
	timeline_loop = false;
	timeline_running = true;
}
return 0;