enum Rsignal
{
	laser,
	next,
	nextmotion,
	tele,
	swordtop,
	swordtoploop,
	swordside,
	sword360,
	sword360fire,
	todoplay,
	laserall,
	missile,
	glow,
	eyeshine,
	setx,
	sety,
	camerafade,
	camerashake,
	addplatform,
	removeplatform,
	dreampart,
	camerasetting,
	showhp,
	lastlaser,
	invin,
	openphase,
	dreamspread,
	die,
	die2
}

var td = todo_current();

while(todo_signal_exists(td))
{
	var signal = todo_signal(td);

	switch(signal)
	{
		case Rsignal.openphase:
			var ind = todo_receive(td);
			switch(ind)
			{
				case 2:
					canenter2phase = true;
				break;

				case 3:
					canenter3phase = true;
				break;
			}
		break;

		case Rsignal.invin:
			oninvincible = todo_receive(td);
		break;
		
		case Rsignal.lastlaser:
			onlastlaser = todo_receive(td);
		break;
		
		case Rsignal.showhp:
			onhealth = todo_receive(td);
		break;
		
		case Rsignal.eyeshine:
			oneyeshine = todo_receive(td);
		break;

		case Rsignal.swordtop:
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
						speed = 0;
						create_dash = 15;
						create_speed  = 15;
					}
					i += 48;
				}
				i += 48;
			}
		break;
		
		case Rsignal.swordtoploop:
			onswordtop = true;
			swordtop_idx = 0;
		break;
		
		case Rsignal.glow:
			var ins = echo_self(3, [0.2, 0.0], c_white, 0.3);
			with(ins)
			{
				sprite_change(spr_radiance_turn, 4, 0);
				scale = [1, 1.2];
			}
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
			xx = x + irandom_range(bbox_left - x, bbox_right - x) * 4 div 3;
			yy = y + irandom_range(bbox_top - y, bbox_bottom - y) * 2 div 3;
			
			instance_create_layer(xx, yy, L_ABOVE, obj_radiancebullet_gener);
		break;
		
		case Rsignal.todoplay:
			var m = todo_receive(td);

			todo_play(motion[m]);
		break;
		
		case Rsignal.tele:
			switch(bossphase)
			{
				case 1:
				case 2:
				case 4:
				case 6:
					x = irandom_range(tele_left, tele_right);
					y = irandom_range(tele_top, tele_bottom);
				break;

				case 3:
					x = 816;
					y = 2752;
				break;
				
				case 5:
					x = 805;
					y = 224;
				break;
			}
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
		
		case Rsignal.camerafade:
			var a, t;
			t = todo_receive(td);
			a = todo_receive(td);
			camera_fade_set(a, 0, c_white);
			camera_fade_set(0.0, t, c_white);
		break;
		
		case Rsignal.camerashake:
			var pw, t;
			pw = todo_receive(td);
			t = todo_receive(td);
			screenshake(pw, t);
		break;
		
		
		case Rsignal.addplatform:
			var ind = todo_receive(td);
			var xx, yy;
			xx = platformx[| ind];
			yy = platformy[| ind];

			with(instance_create_layer(xx, yy, L_PLAYER, obj_radianceplatform))
			{
				duration_trigger(3, particle_emit, [Particle.dream, bbox_left,bbox_right,bbox_top, bbox_bottom, 10]);
				depth -= 1;
			}
		break;

		case Rsignal.removeplatform:
			var ind = todo_receive(td);
			var xx, yy;
			var ins;
			xx = platformx[| ind];
			yy = platformy[| ind];
			
			if instance_exists(obj_radianceplatform)
			{
				ins = instance_nearest(xx, yy, obj_radianceplatform);
				with(ins)
				{
					if point_distance(x, y, xx, yy) < 32
					{
						time_idx = 1;
						destroy_time = 15;
					}	
				}
			}
		break;
		
		case Rsignal.dreampart:
			var x1, x2;
			x1 = (x - bbox_left) * 0.25 + x;
			x2 = (bbox_left - x) * 0.25 + x;
			duration_trigger(3, particle_emit, [Particle.dream, x1, x2, bbox_top, bbox_bottom, 60]);
		break;
		
		case Rsignal.camerasetting:
			var ind = todo_receive(td);
			
			switch(ind)
			{
				case 0:
				default:
					camera_set_yrange(-100, room_height);
				break;

				case 1:
					camera_set_yrange(0, room_height - 16);
				break;

				case 2: //2phase
					camera_set_yrange(1550, 2532);
				break;

				case 3: //last
					camera_set_yrange(-150, 480);
				break;
			}
		break;
		
		case Rsignal.die:
			sprite_change(spr_radiance_death, 0, 1);
			sfx(snd_lasthit);

			onhealth = false;
			bossbar();
			bgm();

			screenshake(20, 1);
			bossphase = -1;

			sys_global.canrestart = false;
			
			with(sys_camera)
			{
				ds_list_clear(follow);
				ds_list_add(follow, obj_radiance);
			}
		break;
		
		case Rsignal.die2:
			camera_fade_set(1.0, 60, c_white);
			
			alarm_trigger(150, scr_gotostageresult, 1, 1);
			//isgameclear
		break;

		case Rsignal.dreamspread:
			onspreaddream = todo_receive(td);
		break;
	}
}



