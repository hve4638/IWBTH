///@argu ind
if argument_count == 0
{
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
}
else
{
	var ind = argument[0];

	with(sys_particle)
	{
		if isdeclare[ind]
		{
			part_system_destroy(Sys[ind]);
			isdeclare[ind] = false;
		}
	}
}