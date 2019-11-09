camera_follow();

x += (xTo - x) / follow_div;
y += (yTo - y) / follow_div;

shake = max(shake-1, 0);
while (!ds_priority_empty(shake_queue))
{
    var s=ds_priority_find_max(shake_queue);
	
    if time_idx <= shake_map[? s]
	{
		shake = max(shake, s);
        break;
    }
	else
		ds_priority_delete_max(shake_queue);
}

var _dir;
var sx, sy;
if 0 < shake
{
	_dir = irandom_range(0,360);
	sx = ceil(lengthdir_x(shake,_dir));
	sy = ceil(lengthdir_y(shake,_dir));
}
else
{
	sx = 0;
	sy = 0;
}



x = clamp(x, xview_min, xview_max);
y = clamp(y, yview_min, yview_max);

var rx, ry;
rx = floor(x + sx - view_w * originw);
ry = floor(y + sy - view_h * originh);

camera_set_view_pos(cam,rx,ry);