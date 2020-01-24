///@argu isaccurate
var accurate = argument[0];

if state == stateD.attack
{
	var arr;
	arr[0] = dragun[? DragunParts.hand_l];
	arr[1] = dragun[? DragunParts.hand_r];
	arr[2] = dragun[? DragunParts.head];
	arr[3] = dragun[? DragunParts.wings];
	
	for(var i = 0; i < arr_size(arr); i++)
	{
		var ins = arr[i];
		var m = map_attackpos[? ins.sprite_index];

		if is_undefined(m)
			continue;
		
		var n = m[? floor(ins.image_index)];
		if !is_array(n)
			continue;

		//cout("~~~~~~~~~~~~~~", n[2], n[3], real(accurate));
		if accurate || n[3]
		{
			var xx, yy;
			xx = ins.x + (n[0] - sprite_get_xoffset(ins.sprite_index)) * ins.image_xscale;
			yy = ins.y + (n[1] - sprite_get_yoffset(ins.sprite_index)) * ins.image_yscale;
			switch(n[2])
			{
				case 0:
					if shoottype == 0
					{
						var bs = 5.5, bd = 15, ba = 20;
						with(instance_create_layer(xx, yy, L_ABOVE, obj_bulletspread))
						{
							idx_start = point_direction(x, y, Player.x, Player.y);
							idx_add = ba;
							bullet_spd = bs;
							bullet_spread = 1;
						}
						with(instance_create_layer(xx, yy, L_ABOVE, obj_bulletspread))
						{
							idx_start = point_direction(x, y, Player.x, Player.y);
							idx_add = ba;
							idx_start += idx_add / 2;
							bullet_spd = bs;
							bullet_spread = 1;
							delay = bd;
						}
					}
					else if shoottype == 1
					{
						var sdir = pdir(xx - ins.x, yy - ins.y);
						for(var i = -60; i < 60; i += 120/7)
						{
							with(instance_create_layer(xx, yy, L_ABOVE, obj_bouncebullet))
							{
								direction = sdir + i + irandom_range(-4, 4);
								speed = 8;
							}
						}
					}
					sfx(snd_dragungunshoot);
				break;
				
				case 1:
					var g = i == 0 ? smoothbulletgener_l : smoothbulletgener_r;
					
					if !instance_exists(g)
					{
						g = instance_create_layer(xx, yy, L_ABOVE, obj_bulletgenerate);
						
						if i == 0
							smoothbulletgener_l = g;
						else
							smoothbulletgener_r = g;
					}
					
					with(g)
					{
						life_idx = 0;
						x = xx;
						y = yy;
						shootdir = pdir(xx - ins.x, yy - ins.y);
					}
				break;
				
				case 2:

					with(instance_create_layer(xx, yy, L_ABOVE, obj_danmaku))
					{
						direction = 270;
						speed = 2;
						type = 2;
						
						image_xscale = 2.3;
						image_yscale = 2.3;
					}
				break;
				
				case 3:
					with(instance_create_layer(xx, yy, L_ABOVE, obj_rpgbullet))
					{
						vspeed = 3.5;	
						image_xscale = ins.image_xscale;
						image_yscale = ins.image_yscale;
					}
					sfx(snd_dragunrpgshoot);
				break;
			}
		}
		
		/*
		if (ins.sprite_index == spr_dragun_gun_side_attack && floor(ins.image_index) == 4)
		{
			var xx = ins.x + (91 - 44) * ins.image_xscale;
			var yy = ins.y + (8 - 46) * ins.image_yscale;

			with(instance_create_layer(xx, yy, L_ABOVE, obj_bulletspread))
			{
				idx_start = point_direction(x, y, Player.x, Player.y);
				idx_add = ba;
				bullet_spd = bs;
				bullet_spread = 1;
			}
			with(instance_create_layer(xx, yy, L_ABOVE, obj_bulletspread))
			{
				idx_start = point_direction(x, y, Player.x, Player.y);
				idx_add = ba;
				idx_start += idx_add / 2;
				bullet_spd = bs;
				bullet_spread = 1;
				delay = bd;
			}
		}
		if (ins.sprite_index == spr_dragun_gun_front_attack && floor(ins.image_index) == 1)
		{
			var xx = ins.x + (13 - 13) * ins.image_xscale;
			var yy = ins.y + (47 - 27) * ins.image_yscale;

			with(instance_create_layer(xx, yy, L_ABOVE, obj_bulletspread))
			{
				idx_start = point_direction(x, y, Player.x, Player.y);
				idx_add = ba;
				bullet_spd = bs;
				bullet_spread = 1;
			}
			with(instance_create_layer(xx, yy, L_ABOVE, obj_bulletspread))
			{
				idx_start = point_direction(x, y, Player.x, Player.y);
				idx_add = ba;
				idx_start += idx_add / 2;
				bullet_spd = bs;
				bullet_spread = 1;
				delay = bd;
			}
		}*/
	}
}