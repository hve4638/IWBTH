xTo = x;
yTo = y;

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

if xmod_enable
	xTo -= xTo mod xmod - xmod div 2;
if ymod_enable
	yTo -= yTo mod ymod - ymod div 2;

xTo = clamp(xTo, xview_min, xview_max);
yTo = clamp(yTo, yview_min, yview_max);