///@argu index
var idx = argument[0];
switch(idx)
{
	case 0:
		var ins = danmaku_create(x, y, 0, 0, 1);
		with(ins)
		{
			sprite_index = spr_trickle;
			origin_distance = 48;
			origin_direction = 270 - 15;
			onstray = true;
		}
	break;
}