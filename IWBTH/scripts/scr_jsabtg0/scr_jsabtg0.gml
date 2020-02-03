var idx = argument[0];
var w, h;
w = room_width div 2;
h = room_height div 2;

if idx mod 3 != 0
	return 0;
idx = idx div 3;

if idx == 0
{
	with(instance_create_layer(w, h, L_BELOW, obj_jsabwarning_block))
	{
		thick = 1;
		length = 1;

	}
}
else
{
	
	for(var o = 0; o < 4; o++)
	{
		with(instance_create_layer(w + lengthdir_x(idx * 34, o * 90), h + lengthdir_y(idx * 34, o * 90), L_BELOW, obj_jsabwarning_block))
		{
			thick = 1;
			length = 1;
		}
	}
}