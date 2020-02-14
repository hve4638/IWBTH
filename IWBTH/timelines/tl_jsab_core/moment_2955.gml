///@desc laser
tg_on[4] = true;
tg_idx[4] = 0;

scr_jsabtl_c7(6);
alarm_trigger(100, screenshake, [4, 55], false);


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