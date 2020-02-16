///@desc lastlaser
tg_on[11] = true;
tg_idx[11] = 0;

with(obj_jsablaser)
{
	if onbounce
	{
		life_create(10);
		time_idx = 0;
		onbounce = true;
	
		white_start = 0;
		white_time = 10;
	}
}