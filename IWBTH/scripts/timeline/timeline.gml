///@param index
if argument_count == 0
{
    timeline_running = false;
}
else
{
	timeline_index = argument[0];
	timeline_position = 0;
	timeline_speed = 1;
	timeline_loop = false;
	timeline_running = true;
}
return 0;