var y1 = bbox_top;
var size = ds_list_size(reflect_list);

ds_priority_clear(reflect_queue);
for(var i = 0; i < size; i++)
	with(reflect_list[| i])
		ds_priority_add(other.reflect_queue,id,depth);

while(!ds_priority_empty(reflect_queue))
{
	var ins = ds_priority_delete_max(reflect_queue);
	
	with(ins)
	{
		var _x, _y, spr, img, xs, ys, r, c, a;
		_x = x;
		_y = y1 + abs(y1 - bbox_bottom) + (bbox_bottom - y);
		spr = sprite_index;
		img = image_index;
		xs = image_xscale;
		ys = -image_yscale;
		r = image_angle;
		c = image_blend;
		a = image_alpha;
	
		switch(object_index)
		{
			case obj_player: xs *= look; _x = round(_x); _y = round(_y); break;
			case obj_echo:
				if (0 <= color) gpu_set_fog(1,color,0,0);
				if (isfade) a *= 1 - (life_idx / life);
				xs *= scale;
				ys *= scale;
			break;
			case obj_hubcolumn:
				//ys = -ys;
				//xs = -xs;
				_y = y1 + abs(y1 - y);
				r = -r;
			break;
		}
	
		draw_sprite_ext(spr, img, _x, _y, xs, ys, r, c, a);
		gpu_set_fog(0,0,0,0);
	}
}

draw_self();