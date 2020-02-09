var idx = argument[0];

if idx mod 6 != 0
	exit;

var xx, yy, dir;
xx = room_width div 2;
yy = room_height div 2;
dir = point_direction(xx, yy, Player.x, Player.y);

for(var i = 0; i < 360; i += 360/28)
{
	var ins = danmaku_create(xx, yy, dir + i, 10);
	with(ins)
	{
		sprite_index = spr_jsabbullet;
		image_xscale = 0.24;
		image_yscale = 0.24;
	}
}