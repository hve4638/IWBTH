if firstmeet
{
	var n = false;
	for(var i = 0; i < ds_list_size(follow); i++)
	{
		var ins = follow[| i];
		
		if instance_exists(ins)
		{
			n = true;
			break;
		}
	}
	
	if n
	{
		camera_follow();
		x = xTo;
		y = yTo;
		
		firstmeet = false;
	}
}


camera_follow();

xTo = clamp(xTo, xview_min, xview_max);
yTo = clamp(yTo, yview_min, yview_max);

x += round((xTo - x) / follow_div);
y += round((yTo - y) / follow_div);

#region shake
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
#endregion

//x = clamp(x, xview_min, xview_max);
//y = clamp(y, yview_min, yview_max);

var rx, ry;
rx = floor(x + sx - view_w * originw);
ry = floor(y + sy - view_h * originh);

camera_set_view_pos(cam,rx,ry);