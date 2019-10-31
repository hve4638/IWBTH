switch(follow_type)
{
	case Camtype.follow_obj:
	{
		var _x, _y, c;
		_x = 0; _y = 0;
		c = 0;
		
		for(var i=0;i<ds_list_size(follow);i++)
		{
			var _ins;
			_ins = follow[| i];
			with(_ins)
			{
				_x += x;
				_y += y;
				c++;
			}
		}
		
		if 0 < c
		{
			xTo = _x div c;
			yTo = _y div c;
		}
	} break;
}

xTo += addx;
yTo += addy;

xTo = clamp(xTo, xview_min, xview_max);
yTo = clamp(yTo, yview_min, yview_max);

x = clamp(x, xview_min, xview_max);
y = clamp(y, yview_min, yview_max);

var f;
f = follow_div;
x += (xTo - x) / f;
y += (yTo - y) / f;


shake = max(shake-1,0);
while (!ds_priority_empty(shake_queue))
{
    var s=ds_priority_find_max(shake_queue);
	
    if time_idx <= shake_map[? s]
	{
        if shake < s shake = s;
        break;
    }
	else ds_priority_delete_max(shake_queue);
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

var rx, ry;
rx = floor(x + sx - view_w * originw);
ry = floor(y + sy - view_h * originh);

camera_set_view_pos(cam,rx,ry);