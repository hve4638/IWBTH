if !onboom
	exit;

//var dir = point_direction(x, y, Player.x, Player.y);

for(var i = 0; i < 360; i += 360/12)
{
	var ins = danmaku_create(x, y, i, 6);
	with(ins)
	{
		sprite_index = spr_jsabbullet;
		image_xscale = 0.24;
		image_yscale = 0.24;
	}
}
screenshake(5, 1);
//global_fade_set(0.4, 0, c_white);
//global_fade_set(0, 2, c_white);
