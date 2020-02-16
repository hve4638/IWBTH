var s = array_size(struct_run);
var ll = true;
for(var i = 0; i < s; i++)
{
	if struct_run[i]
	{
		var list = struct_list[i]
		var size = ds_list_size(list);

		if struct_idx[i] < size
		{
			if struct_idxp[i] != floor(struct_idx[i])
			{
				if !smoothstruct
				{
					var list1 = list[| floor(struct_idx[i])];
					dragun_set(dragun, list1, struct_lock[i]);
				}
			}

			if smoothstruct
			{
				var v = struct_idx[i] - floor(struct_idx[i]);
				var list1 = list[| floor(struct_idx[i])];
				var list2 = list[| floor(struct_idx[i]) + 1];

				dragun_set_merge(dragun, list1, list2, v, struct_lock[i]);
			}
			if ll
			{
				scr_dragun_attack(struct_idxp[i] != floor(struct_idx[i]));
				ll = false;
			}
			
			struct_idxp[i] = floor(struct_idx[i]);
			struct_idx[i] += struct_speed[i];
		}
		else
		{
			struct_idxp[i] = -1;
			struct_idx[i] = 0;
			struct_idxp[i] = 0;
			struct_run[i] = false;
		}
	}
}


if onhealth
{
	var add = (hp - drawhp);
	drawhp += add / 10;
	
	bossbar(drawhp/maxhp);
}