if !isno(destroy_time)
{
	if time_idx < destroy_time
		white_alpha = 1 - (destroy_time - time_idx) / destroy_time;

	if time_idx > destroy_time
		instance_destroy();
}

if !isno(create_time)
{
	if time_idx <= create_time
		white_alpha = (create_time - time_idx) / create_time;
}

time_idx++; 