///@argu x
///@argu y
var xx = argument[0];
var yy = argument[1];
var dir = point_direction(x, y, Player.x, Player.y);

for(var i = 0; i < 360; i += 360/18)
{
	var ins = danmaku_create(xx, yy, dir + i, 6.4);
	with(ins)
	{
		sprite_index = spr_jsabblock;
		angle_add = 2;
		image_xscale = 0.75;
		image_yscale = 0.75;
	}
}

screenshake(6, 1);