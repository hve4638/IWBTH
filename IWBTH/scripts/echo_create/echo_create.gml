///@param life
///@param depth
///@param sprite
///@param subimg
///@param x
///@param y
///@param xscale
///@param yscale
///@param angle
var life, dep;
var spr, sub, _x, _y, xs, ys, rot;
life = argument[0];
dep = argument[1];
spr = argument[2];
sub = argument[3];
_x = argument[4];
_y = argument[5];
xs = argument[6];
ys = argument[7];
rot = argument[8];

var ins = instance_create_depth(_x, _y, dep, obj_echo);
with(ins)
{
	life_create(life);

	sprite_index = spr;
	image_index = sub;
	image_xscale = xs;
	image_yscale = ys;
	image_angle = rot;
	
	image_speed = 0.0;
}

return ins;