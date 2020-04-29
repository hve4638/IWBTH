if todo_is_playing()
	scr_radiance_todo();

array_timeline_step();

if keyboard_check_pressed(ord("T"))
	onlasttrap = true;

if onsword360
{
	if sword360_delay == 0
	{
		var ins;
		sword360_delay = sword360_delay_max;

		sword360_idx += sword360_add;
		
		ins = instance_create_layer(x + ox, y + oy, L_ABOVE, obj_radiancesword);
		with(ins)
		{
			life_create(500);
			direction = other.sword360_dir - other.sword360_idx;
			speed = 6;
			image_angle = direction;
		}

		ds_list_add(sword360_list, ins);
		
		if sword360_idx >= 360
			onsword360 = false;
	}
	else
		sword360_delay = max(sword360_delay - 1, 0);
}

if onswordtop
{
	if swordtop_idx mod 40 == 0
	{
		var i = Player.x mod 48 + choose(24, 0);
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
	}
swordtop_idx++;
}

if onlastlaser
{
	if lastlaser_idx mod 55 == 0
	{
		var xx, yy, c;
		xx = Player.x + irandom_range(-256, 256) * 0.4;
		yy = Player.y;
		c = point_direction(x + ox, y + oy, xx, yy);
		with(instance_create_layer(x + ox, y + oy, L_ABOVE, obj_lasergener_radiance))
		{
			laser_dir = c;
			laser_cnt = 1;
		}
	}
	lastlaser_idx++;
}


if onswordside
{
	if swordside_idx == 0
	{
		swordside_idx = 40;
		swordside_cnt--;

		var i = 0, h = Player.y - 48*16;
		var w;
		if bossphase <= 2
			w = swordside_side ? room_width - 64 : 64;
		else
			w = swordside_side ? room_width - 16 : 16;
		var l = 48*32
		while(i < l)
		{
			var n = irandom_range(1,3);

			repeat(n)
			{
				var ins = instance_create_layer(w, h + i, L_ABOVE, obj_radiancesword);
				with(ins)
				{
					life_create(500);
					create_dash = 15;
					create_speed = 11;
					direction = other.swordside_side ? 180 : 0;
					image_angle = direction;
				}
				i += 48;
			}
			i += 48;
		}
		
		if swordside_cnt <= 0
			onswordside = false;
	}
	else
		swordside_idx = max(swordside_idx - 1, 0);
}

if ontrap
{
	ontrap = false;
	trap_idx = 0;
	
	with(obj_radiancetrap_ready)
	{
		life_create(20);
		off_time = time_idx + 1;
	}
	
	var ton = 150;
	switch(trap_type)
	{
		case 0:
			for(var i = 0; i < 14; i ++)
			{
				var xx = floorx_min + i * 23;
				with(instance_create_layer(xx, floory, L_PLAYER, obj_radiancetrap_ready))
				{
					life_create(260 + ton);
					on_time = ton + i;
					off_time = 250 + ton;
				}
			}
		break;
		
		case 1:
			for(var i = 0; i < 14; i ++)
			{
				var xx = floorx_max - i * 23;
				with(instance_create_layer(xx, floory, L_PLAYER, obj_radiancetrap_ready))
				{
					life_create(260 + ton);
					on_time = ton + i;
					off_time = 250 + ton;
				}
			}
		break;
		
		case 2:
			for(var i = 0; i < 9; i ++)
			{
				var xx = floorx_max - i * 23;
				with(instance_create_layer(xx, floory, L_PLAYER, obj_radiancetrap_ready))
				{
					life_create(50000);
					on_time = ton + i;
				}
				
				var xx = floorx_min + i * 23;
				with(instance_create_layer(xx, floory, L_PLAYER, obj_radiancetrap_ready))
				{
					life_create(50000);
					on_time = ton + i;
				}
			}
		break;
	}
}

if onlasttrap
{
	if lasttrap_idx mod 350 == 0
	{
		if (lasttrap_idx div 350) mod 2 == 0
		{
			arr = [608, 990];
			//arr = [414, 608, 800, 990, 1200];
		}
		else
			arr = [414, 800, 1200];
		
		
		var size = array_size(arr);
		for(i = 0; i < size; i++)
		{
			var xx, yy;
			xx = arr[i];
			yy = 448;
			
			addtrap(instance_nearest(xx, yy, obj_radianceplatform));
		}
	}
	lasttrap_idx++;
}


if onspreaddream
{
	var xx, yy;
	xx = x + ox;
	yy = y + oy + 16;
	particle_emit(Particle.dreamspread, xx - 96 * 0.4, xx + 96 * 0.4, yy - 40 * 0.4, yy + 190 * 0.4, 6);
}

if oneyeshine
	eyeshine_alpha += 0.1;
else
	eyeshine_alpha -= 0.15;
eyeshine_alpha = clamp(eyeshine_alpha, 0, 1);

trap_idx++;






