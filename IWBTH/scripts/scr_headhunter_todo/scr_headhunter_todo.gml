var td = todo_current();

while(todo_signal_exists(td))
{
	var signal = todo_signal(td);

	if signal < 0
	{
		switch(signal)
		{
			case -1:
				state = todo_receive(td);
			break;
			
			
			case -4:
				sprite_change(spr_headhunter_idle);
				onlook = true;
			break;
		}
	}
	else
	{
		
		switch(signal)
		{
			case 1:
				onlook = todo_receive(td);
			break;
			
			case 2:
				onfocus = todo_receive(td);
				if onfocus
					focus_dir = point_direction(x, y-7, Player.x, Player.y);
			break;
			
			case 11:
				onlaserline = todo_receive(td);
			break;
			
			case 12:
				var lx, ly;
				lx = x + lengthdir_x(64 - 10, focus_dir);
				ly = y - 7 + lengthdir_y(64 - 10, focus_dir);
				
				
				with(instance_create_layer(lx, ly, L_ABOVE, obj_laser))
				{
					life_create(10);
					image_index = 1;
					image_blend = make_color_rgb(255, 230, 0);
					image_alpha = 0.75;
					image_angle = other.focus_dir;
					num = 2;	
					den_add = 0.5;
				}
				screenshake(6, 2);
				/*
				with(instance_create_layer(lx, ly, L_ABOVE, obj_headhunter_laser))
				{
					image_angle = other.focus_dir;
					
					image_yscale = 1.5;
					life_create(30);
				}*/
			break;
			
			case 13:
				ondash = true;
				dashtime_max = todo_receive(td);
			break;
		}
	}
}