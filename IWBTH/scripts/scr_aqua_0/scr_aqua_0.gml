///@argu index
var idx = argument[0];

if idx mod 8 != 0
	return 0;
else
	idx = idx div 8;

for(var i = 0; i <= 7; i++)
{
	var ins = danmaku_create(x, y, 0, 0, 1);
	with(ins)
	{
		sprite_index = spr_trickle;
		image_alpha = 0;
		image_xscale = 0.8;
		image_yscale = 0.8;
		origin_distance = 0;
		origin_direction = - 360 * i / 7;
	
		onspin = true;
		spintime = 40;
		tindex = i * 8;
		alpha = 0;
	}
}

return no;

if 10 < idx
	return no;

return 0;