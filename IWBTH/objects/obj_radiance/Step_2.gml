if onhealth
{
	drawhp += (hp - drawhp) / 10;
	
	bossbar(drawhp/maxhp);
}


if !ds_list_empty(sword360_list)
{
	var size = ds_list_size(sword360_list);
	for(var i = 0; i < size; i++)
	{
		var ins = sword360_list[| i];
		
		with(ins)
		{
			if time_idx <= 13
			{
				speed = 13 - time_idx;	
			}
		}
	}
}