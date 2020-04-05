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
	roar,
	glow,
<<<<<<< HEAD
	eyeshine,
	Screenshake,
	go2phase,
=======
>>>>>>> parent of 6cb4623... Radiance 1페이즈 패턴
	setx,
	sety,
	deathline,
	addplatform,
	removeplatform,
}

var td = todo_current();

while(todo_signal_exists(td))
{
	var signal = todo_signal(td);

	switch(signal)
	{
<<<<<<< HEAD
		case Rsignal.roar:
			onroar = todo_receive(td);
		break;
		
		case Rsignal.eyeshine:
			oneyeshine = todo_receive(td);
		break;

=======
>>>>>>> parent of 6cb4623... Radiance 1페이즈 패턴
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
		
		case Rsignal.glow:
			var ins = echo_self(3, [0.2, 0.0], c_white, 0.3);
			with(ins)
			{
				sprite_change(spr_radiance_turn, 4, 0);
				scale = [1, 1.2];
			}
		break;
		
		case Rsignal.Screenshake:
			var pow = todo_receive(td);
			var t = todo_receive(td);

			screenshake(pow, t);
		break;
		
		case Rsignal.go2phase:
			var xx, yy;
			xx = (bbox_left + bbox_right) / 2;
			yy = (bbox_bottom + bbox_top) / 2;

			duration_trigger(15, particle_emit, [Particle.dream, xx - 64, xx + 64, yy - 128, yy + 128, 15]);
			sprite_change(spr_empty);
			
			camera_fade_set(1.0, 0, c_white);
			camera_fade_set(0.0, 40);
		break;

		case Rsignal.laserall:
			var yy = sys_camera.camera_y1 - 500;
			var x1 = 0;
			var x2 = room_width;
			with(instance_create_layer(x1, yy, L_ABOVE, obj_radiancelaser))
			{
				hspeed = 7;
			}
			with(instance_create_layer(x2, yy, L_ABOVE, obj_radiancelaser))
			{
				hspeed = -7;
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
			
			instance_create_layer(xx, yy, L_ABOVE, obj_radiancebullet_gener);
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
		
		case Rsignal.addplatform:
			var ind = todo_receive(td);
			var xx = platformpos_x[ind];
			var yy = platformpos_y[ind];
			
			if position_meeting(xx, yy, obj_platform_radiance)
				break;

			with(instance_create_layer(xx, yy, L_PLAYER, obj_platform_radiance))
			{
				create_time = 30;
				depth -= 1;
				
				particle_emit(Particle.dream, bbox_left, bbox_right, bbox_top, bbox_bottom, 20);
			}
		break;
		
		case Rsignal.removeplatform:
			var ind = todo_receive(td);
			var xx = platformpos_x[ind];
			var yy = platformpos_y[ind];

			var ins = instance_position(xx, yy, obj_platform_radiance);
			with(ins)
			{
				time_idx = 0;
				destroy_time = 10;
				destroy_int = 10;
			}
		break;
		
		case Rsignal.deathline:
			var yy = todo_receive(td);
 
			deathline = yy;
		break;
	}
}



