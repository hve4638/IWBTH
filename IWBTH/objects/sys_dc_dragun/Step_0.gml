with(obj_danmaku)
{
	switch(type)
	{
		case 1:
			if time_idx <= 1
				cs = true;
			
			if cs
			{
				if 0.5 < speed
				{
					life_idx = 0;
					speed -= 0.23;
				}
				else
					cs = false;
			}
			else
				vspeed -= 0.4;
		break;
		
		case 2:
			if time_idx > 45/2
			{
				for(var i = 270; i - 270 < 360; i+= 360 / 5)
					danmaku_create(x, y, i, 4, 10000);

				instance_destroy();
			}
		break;
		

		case 10000:
			if time_idx > 20
			{
				for(var i = 0; i < 360; i+= 360 / 16)
					danmaku_create(x, y, i, 6);

				instance_destroy();
			}
			
		break;
	}
	
	time_idx++;
}