with(sys_particle)
{
	for(var i = 0; i < len; i++)
	{
		if isdeclare[i]
		{
			part_system_destroy(Sys[i]);
			isdeclare[i] = false;
		}
	}
}