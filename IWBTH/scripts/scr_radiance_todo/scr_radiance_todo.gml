enum Rsignal
{
	laser,
	next,
	nextmotion,
	tele,
	swordtop,
	swordside,
	sword360,
	sword360fire,
	todoplay,
	laserall,
	missile,

	setx,
	sety
}

var td = todo_current();

while(todo_signal_exists(td))
{
	var signal = todo_signal(td);

	switch(signal)
	{
		case Rsignal.swordtop:
			onswordtop = true;
			swordtop_idx = 0;

			var i = 0;
			while(i < room_width)
			{
				var n = irandom_range(1,4);

				repeat(n)
				{
					var ins = instance_create_layer(i, swordtop_y, L_ABOVE, obj_radiancesword);
					with(ins)
					{
						life_create(150);
						direction = 270;
						image_angle = direction;
					}

					ds_list_add(swordtop_list, ins);
					i += 48;
				}
				i += 48;
			}
		break;
		
		case Rsignal.laserall:
			var yy = sys_camera.camera_y1 - 500;
			var x1 = 0;
			var x2 = room_width;
			with(instance_create_layer(x1, yy, L_ABOVE, obj_radiancelaser))
			{
				hspeed = 8;
			}
			with(instance_create_layer(x2, yy, L_ABOVE, obj_radiancelaser))
			{
				hspeed = -8;
			}
			
			break;
		
		case Rsignal.swordside:
			onswordside = true;
			swordside_idx = 0;
			swordside_cnt = 3;
			if Player.x < room_width div 2
				swordside_side = 0;
			else
				swordside_side = 1;
		break;

		case Rsignal.next:
			scr_radiance_next();
		break;

		case Rsignal.missile:
			var xx, yy;
			xx = irandom_range(bbox_left, bbox_right);
			yy = irandom_range(bbox_top, bbox_bottom);
			
			instance_create_layer(xx, yy, L_ABOVE, obj_radiancebullet);
		break;
		
		case Rsignal.todoplay:
			var m = todo_receive(td);

			todo_play(motion[m]);
		break;
		
		case Rsignal.tele:
			x = irandom_range(tele_left, tele_right);
			y = irandom_range(tele_top, tele_bottom);
		break;
			
		case Rsignal.laser:
			with(instance_create_layer(x + ox, y + oy, L_ABOVE, obj_lasergener_radiance))
			{
				laser_dir = other.laser360_dir;
				laser_cnt = 12;
			}
			
			laser360_dir += random_range(12, 20);
		break;
		
		case Rsignal.setx:
			x = todo_receive(td);
		break;
		
		case Rsignal.sety:
			y = todo_receive(td);
		break;
		
		case Rsignal.sword360:
			onsword360 = true;
			sword360_idx = 0;
			sword360_dir = irandom_range(-30, 30);
		break;
		
		case Rsignal.sword360fire:
			var size = ds_list_size(sword360_list);
			for(var i = 0; i < size; i++)
			{
				var ins = sword360_list[| i];
		
				with(ins)
				{
					speed = 16;
					angle_add = - 0.5;
				}
			}
			ds_list_clear(sword360_list);
		break;
	}
}



