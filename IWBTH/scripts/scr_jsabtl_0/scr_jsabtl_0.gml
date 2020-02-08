var idx = argument[0];
var w, h, s;
w = room_width div 2;
h = room_height div 2;

if idx mod 3 != 0
	return 0;
idx = idx div 3;
s = 1.5;
var ww = 34 * s;

if idx == 0
{
	with(instance_create_layer(w, h, L_BELOW, obj_jsabwarning_block))
	{
		life_create(50);
		thick = s;
		length = s;
		
		image_xscale = s;
		image_yscale = s;
		ins_life = 0.8 * 50;
	}
}
else
{
	for(var o = 0; o < 4; o++)
	{
		with(instance_create_layer(w + lengthdir_x(idx * ww, o * 90), h + lengthdir_y(idx * ww, o * 90), L_BELOW, obj_jsabwarning_block))
		{
			life_create(50);
			thick = s;
			length = s;
			
			image_xscale = s;
			image_yscale = s;
			ins_life = 0.8 * 50;
		}
	}
	
	if w + 34 < idx * 34
		return no;
}

return 0;