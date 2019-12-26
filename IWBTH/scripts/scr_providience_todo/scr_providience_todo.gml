var td = todo_current();

while(todo_signal_exists(td))
{
	var signal = todo_signal(td);

	if signal < 0
	{
		#region
		switch(signal)
		{
			case -1:
				ex_todo = todo_receive(td);
			break;
			case -2:
				onlook = todo_receive(td);
			break;
			case -3:
				state = todo_receive(td);
			break;
			case -4:
				state = StateP.normal;
				ex_todo = 0;
				onlook = true;
				onabsorb = false;
			break;
			case -5:
				onabsorb = todo_receive(td);
			break;
				
			case -10:
				switch(todo_receive(td))
				{
					case 1:
						var pw, t;
						pw = todo_receive(td);
						t = todo_receive(td);
						screenshake(pw, t);
					break;
				}
			break;
		}
		#endregion
	}
	else
	{
		#region
		switch(ex_todo)
		{
		case 1:
			if signal
				hspd_add = todo_receive(td) * image_xscale;
		break;

		case 2:
			if signal
			{
				var t = 0;
				var value = todo_receive(td);
				for(var i = 1 ; i < 32; i+=2)
				{
					var a, b;
					var w = i * 48;
					a = instance_create_layer(bbox_right + w, 450, L_ABOVE, obj_lasergener);
					b = instance_create_layer(bbox_left - w, 450, L_ABOVE, obj_lasergener);
					a.sprite_index = spr_temp2;
					b.sprite_index = spr_temp2;
					a.shakepow = 16;
					a.shaketime = 1;
					a.firedelay = value;
					b.firedelay = value;
						
					t += 1;
				}
				screenshake(8, 2);
			}
		break;
		
		case 3:
			if signal == 1
			{
				i = 2;

				repeat(3)
				{
					var lx = image_xscale < 0 ? bbox_left : bbox_right;
					with(instance_create_layer(lx + 16 * i++ * image_xscale, y, L_ABOVE, obj_swordwave))
					{
						image_xscale = other.image_xscale;
						image_yscale = 1;
						hspd_sign = other.image_xscale;
						hspd = 32;
						hspd_add = 0;
					}
				}
			}
			else if signal == 2
				screenshake(8, 1);
		break;
		
		case 4:
			if signal
			{
				var i = 0, s = 0;
				var w = abs(Player.x - x);
				while(s < w - 128)
					s += ++i;

				hspd_add = i * image_xscale;
			}
		break;
		
		case 5:
			if signal
			{
				var lx = image_xscale < 0 ? bbox_left : bbox_right;
				with(instance_create_layer(lx, floory, L_ABOVE, obj_pvshock))
				{
					hspd = 32 * sign(other.image_xscale);
					vspd = 0;
					life = 15;
					image_xscale = 1.5;
				}
			}
		break;
			
		case 6:
			if signal
			{
				with(instance_create_layer(x, y - 12, L_ABOVE, obj_rectemitter))
				{
					x_distribution = 400;
					y_distribution = 32;
					emit_cnt = 60;
					life = 7;
				}
					
				with(instance_create_layer(x, y - 24, L_ABOVE, obj_damagebox_life))
				{
					//visible = true;
					life = 55;
					sprite_set_size(1200, 32);
					x -= sprite_width / 2;
					y -= sprite_height / 2;
				}
			}
			break;
		}	//Switch End
		#endregion
	}
}	//While End