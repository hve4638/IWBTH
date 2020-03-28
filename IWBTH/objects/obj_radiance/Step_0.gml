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
		swordside_idx = 35;
		swordside_cnt--;

		var i = 0, h = Player.y - 48*16;
		var w = swordside_side ? room_width + 64 : -64;
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
					speed = 13;
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

