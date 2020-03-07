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
				ongrav = false;
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
			
			case 3: //roll
				var spd = 13;
				if !rolltowall
				{
					if x < room_width div 2
					{
						look = 1;
						hspd = spd;
					}
					else
					{
						look = -1;
						hspd = -spd;
					}
				}
				else
				{
					if x < room_width div 2
					{
						look = -1;
						hspd = -spd;
					}
					else
					{
						look = 1;
						hspd = spd;
					}
				}
				
				sprite_change(spr_headhunter_rolling, 0, 1.4);
				onrolling = true;
				ongrav = false;
				onlook = false;
				rolltowall = false;
			break;
	
			case 11:
				onlaserline = todo_receive(td);
			break;
			
			case 12: //laser shoot
				var lx, ly;
				lx = x + ox + lengthdir_x(64 - 10, focus_dir);
				ly = y + oy + lengthdir_y(64 - 10, focus_dir);
				
				
				with(instance_create_layer(lx, ly, L_ABOVE, obj_laser))
				{
					life_create(10);
					image_index = 1;
					image_blend = make_color_rgb(255, 240, 0);
					image_alpha = 0.6;
					image_angle = other.focus_dir;
					num = 2;	
					den_add = 0.5;
				}
				screenshake(6, 2);
			break;
			
			case 13:
				ondash = true;
				dashtime = 0;
				dashtime_max = todo_receive(td);

				var dir, len;
				var lx, ly;
				dir = focus_dir;
				len = 0;
				
				/*if dir > 180
				{
					cout("dir: ", angle_signx(dir));
					if angle_signx(dir) == 1
						dir = 0;
					else
						dir = 180;
				}*/
				dir = look ? 0 : 180;

				do
				{
					len += 32;
					lx = lengthdir_x(len, dir);
					ly = lengthdir_y(len, dir);
				}
				until(tile_meeting(lx, ly));

				len -= 32;
				do
				{
					len ++;
					lx = lengthdir_x(len, dir);
					ly = lengthdir_y(len, dir);
				}
				until(tile_meeting(lx, ly));
				len -= 8;
				
				dash_dir = dir;
				dash_len = len;
				dash_xp = x;
				dash_yp = y;
				dash_tox = x + lengthdir_x(len, dir);
				dash_toy = y + lengthdir_y(len, dir);
			break;
			
			case 14: //roll
				var p;
				onlook = false;
				onjump1 = true;
				
				if x < room_width div 2
				{
					p = point_direction(x, y, w_left, 190);
					look = 1;
				}
				else
				{
					p = point_direction(x, y, w_right, 190);
					look = -1;
				}
				hspd = lengthdir_x(20, p);
				vspd = lengthdir_y(20, p);
				
			break;
			
			case 15:
				var ins = instance_create_layer(x + 64 * look, y - 14, L_ABOVE, obj_headhunterboom);
				var a, b, d, s;
				//a = todo_receive(td);
				//b = todo_receive(td);
				s = irandom_range(16, 23);
				d = irandom_range(-5, 75);
				a = abs(lengthdir_x(s, d));
				b = lengthdir_y(s, d);
				with(ins)
				{
					hspd = a * other.look;
					vspd = b;
					grav = 0.5;

					install_time = 60;
				}
			break;
		}
	}
}