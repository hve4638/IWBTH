/*var cam, cam_x, cam_y;
var x1, x2, y1, y2, rw, rh;
cam = view_camera[0];
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);

x1 = max(bbox_left - cam_x, 0);
x2 = min(bbox_right - cam_x, win_w);
y1 = max(bbox_top - cam_y, 0);
y2 = min(bbox_bottom - cam_y, win_h);
rw = abs(x2 - x1);
rh = abs(y2 - y1);

if y1 == y2 || x1 == x2
	exit;

if surface_exists(surf)
	surf = surface_create(win_w, rh);

var size = ds_list_size(reflect_list);
ds_priority_clear(reflect_queue);
for(var i = 0; i < size; i++)
	with(reflect_list[| i])
		ds_priority_add(other.reflect_queue,id,depth);

surface_set_target(surf);
	draw_clear(c_white);

	while(!ds_priority_empty(reflect_queue))
	{
		var ins = ds_priority_delete_max(reflect_queue);
	
		with(ins)
		{
			if !(x2 < bbox_left || bbox_right < x1)
			{
				var _x, _y, spr, img, xs, ys, r, c, a;
				_x = x;
				_y = y + abs(y1 - bbox_bottom) + (bbox_bottom - y);
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
					break;
				}
	
				draw_sprite_ext(spr, img, _x, _y, xs, ys, r, c, a);
				gpu_set_fog(0,0,0,0);
			}
		}
	}
surface_reset_target();

draw_self();