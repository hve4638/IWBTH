if state == stateD.attack
{
	var bs = 5.5, bd = 15, ba = 20;
	var arr;
	arr[0] = dragun[? DragunParts.hand_l];
	arr[1] = dragun[? DragunParts.hand_r];
	for(var i = 0; i < arr_size(arr); i++)
	{
		var ins = arr[i];
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
		}
	}
}