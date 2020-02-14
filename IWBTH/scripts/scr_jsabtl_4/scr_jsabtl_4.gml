var idx = argument[0];


var dir = (idx) * 360 / 20;
if dir < 360
{
	with(jsab_laser(room_width div 2, room_height div 2, dir, 100 + idx, 15))
	{
		length = 1000;
		thick = 0.66;
	}
}
else
	return no;

return 0;