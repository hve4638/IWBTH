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
				state = todo_receive(td);
			break;
			case -2:
				var st = todo_receive(td);
				var spd = todo_receive(td);
				var lk = todo_receive(td);
				struct_play(st, spd, lk);
			break;
			case -3:
				struct_stop_all();
			break;
			case -4:
				state = stateD.normal;
				head_free = false;
				smoothstruct = true;
			break;
			case -5:
				head_free = todo_receive(td);
			break;
			case -6:
				smoothstruct = todo_receive(td);
			break;
			case -7:
				head_free = todo_receive(td);
			break;
			case -8:
				shoottype = todo_receive(td);
			break;
			case -9:
				var a = todo_receive(td);
				var spr = todo_receive(td);
				
				with(dragun[? a])
					sprite_change(spr, 0, image_speed);
			break;
			case -10:
				cout("TEST");
			break;
			
			case -11:
				var a = todo_receive(td);
				var spd = todo_receive(td);
				
				with(dragun[? a])
					image_speed = spd;
			break;
			
			case -20:
				isdie = true;
				head_free = false;
				head_follow = false;
				for(var i = 0; i < DragunParts.last; i++)
					dragun[? i].image_speed = 0;
				
			break;
		}
		#endregion
	}
	else
	{
		switch(signal)
		{
			case 1:
				var ins = dragun[? todo_receive(td)];
				var xx = todo_receive(td);
				var yy = todo_receive(td);
				xx = ins.x + (xx - sprite_get_xoffset(ins.sprite_index)) * ins.image_xscale;
				yy = ins.y + (yy - sprite_get_yoffset(ins.sprite_index)) * ins.image_yscale;
				var sdir = pdir(xx - ins.x, yy - ins.y);


				with(instance_create_layer(xx, yy, L_ABOVE, obj_dragunknife))
				{
					direction = sdir;
					speed = 16;
					vspeed = - vspeed;
					image_xscale = 2;
					image_yscale = 2;
				}
				
			break;
			
			case 2:
				onlastpattern = todo_receive(td);
			break;
			
			case 10:
				struct_speed[0] = 1/20;
				sys_global.fade_alpha = 1.0;
				global_fade_set(0, 100, c_white);
			break;
		}
	}
}	//While End