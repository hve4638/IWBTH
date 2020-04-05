if todo_is_playing()
	scr_radiance_todo();

array_timeline_step();

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
	if swordtop_idx > 15
	{
		var size = ds_list_size(swordtop_list);
		for(var i = 0; i < size; i++)
		{
			var ins = swordtop_list[| i];
		
			with(ins)
			{
				speed = 15;
			}
		}
		
		ds_list_clear(swordtop_list);
	}
	else
		swordtop_idx++;
}

if onswordside
{
	if swordside_idx == 0
	{
		swordside_idx = 40;
		swordside_cnt--;

		var i = 0, h = Player.y - 48*16;
		var w = swordside_side ? room_width - 64 : 64;
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
					create_dash = 12;
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
			for(var i = 0; i < 8; i ++)
			{
				var xx = floorx_max - i * 23;
				with(instance_create_layer(xx, floory, L_PLAYER, obj_radiancetrap_ready))
				{
					//life_create(160 + ton);
					on_time = ton + i;
				}
				
				var xx = floorx_min + i * 23;
				with(instance_create_layer(xx, floory, L_PLAYER, obj_radiancetrap_ready))
				{
					//life_create(160 + ton);
					on_time = ton + i;
				}
			}
		break;
	}
	
	ontrap = false;
	trap_idx = 0;
}
trap_idx++;


<<<<<<< HEAD
if onroar
{
	if roar_idx mod 10 == 0
	{
		var xx, yy;
		switch(sprite_index)
		{
			case spr_radiance_idle:
			case spr_radiance_focus:
			default:
				xx = 0;
				yy = -139;

			break;
			
			case spr_radiance_falldown:
			case spr_radiance_falldown1:
				xx = 372 - 210;
				yy = 412 - 291;
			break;

			case spr_radiance_falldown2:
				xx = 372 - 210 -12;
				yy = 412 - 291 - 12;
			
			break;
		}
		
		with(instance_create_layer(x + xx, y + yy, L_ABOVE, obj_effect))
		{
			life_create(15);
			scale = [0, 8];
			alpha = [1.0, 0.25];
			sprite_change(spr_roar);
		}
	}
	
	roar_idx++;
}

if oneyeshine
	eyeshine_alpha += 0.1;
else
	eyeshine_alpha -= 0.15;
eyeshine_alpha = clamp(eyeshine_alpha, 0, 1);
=======
>>>>>>> parent of 6cb4623... Radiance 1페이즈 패턴







