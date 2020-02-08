var dir = point_direction(x, y, Player.x, Player.y);

for(var i = 0; i < 360; i += 360/30)
{
	var ins = danmaku_create(x, y, dir + i, 6);
	with(ins)
	{
		sprite_index = spr_jsabbullet;
		image_xscale = 0.24;
		image_yscale = 0.24;
	}
}