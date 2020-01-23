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
				if instance_exists(obj_player)
				{
					state = StateP.idle;
					ex_todo = 0;
					onlook = true;
					onabsorb = false;
					onattack = true;
				}
			break;
			case -5:
				onabsorb = todo_receive(td);
			break;
			case -6:
				onattack = todo_receive(td);
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

			case -11:
				on_teleport = true;
				tp_x = clamp(Player.x + 128 * choose(1,-1), 96, room_width-96);
			break;
			
			case -20:
				with(instance_create_layer(x, y - 12, L_ABOVE, obj_rectemitter))
				{
					x_distribution = 48;
					y_distribution = 56;
					emit_cnt = 12;
					life = 9;
				}
				screenshake(3, 7);
			break;

			case -100:
				bossphase = -1;
				
				with(instance_create_layer(0, 0, L_SYS, obj_trigger))
				{
					trigger_condition = TriggerCondition.always;
					trigger_end = TriggerEnd.loop;

					trigger_script = scr_gotostageresult;
					goto_idx = 0;
					goto_delay = 150;
				}
				//todo_stop();
				instance_destroy();
				data_destroy();
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
				var n = 48;
				
				if bossphase == 2
				{
					value = value * 3 div 4;
					n = 32 + 4;
				}

				for(var i = 1 ; i < 28; i+=2)
				{
					var a, b;
					var w = i * n;
					a = instance_create_layer(x + 64 + w, 450, L_ABOVE, obj_lasergener);
					b = instance_create_layer(x - 64 - w, 450, L_ABOVE, obj_lasergener);
					a.sprite_index = spr_temp2;
					b.sprite_index = spr_temp2;
					a.shakepow = 16;
					a.shaketime = 1;
					a.firedelay = value;
					b.firedelay = value;

					t += 1;
					
					if bossphase == 2
					{
						a.shakepow = 4;
						value += 3;
					}
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
			if signal == 1
			{
				var i = 0, s = 0;
				var w = abs(Player.x - x);
				while(s < w - 128)
					s += ++i;

				hspd_add = i * image_xscale;
			}
			else if signal == 2
			{
				var i, s, w;
				
				with(obj_player)
				{
					i = 0; s = 0;
					w = abs(other.x - x);	

					while(s < w - 64)
					{
						i += hspd_dec;
						s += i;
					}

					hspd_slide = i * sign(other.x - x);
				}
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