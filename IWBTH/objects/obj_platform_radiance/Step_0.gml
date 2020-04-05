if !isno(destroy_time)
{
	if time_idx >= destroy_time - destroy_int
		white_alpha = ((destroy_time - destroy_int) - time_idx) / destroy_int;

	if time_idx > destroy_time
	{
		particle_emit(Particle.dream, bbox_left, bbox_right, bbox_top, bbox_bottom, 20);
		instance_destroy();
	}
}

if !isno(create_time)
{
	if time_idx <= create_time
		white_alpha = (create_time - time_idx) / create_time;
}

time_idx++;