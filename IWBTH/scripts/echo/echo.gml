///@param life
///@param depth
///@param sprite
///@param subimg
///@param x
///@param y
///@param xscale
///@param yscale
///@param angle
///@param color
///@param fade
///@param alpha
var spr, sub, _x, _y, xs, ys, r, a, c;
var l, d, f;
l = argument[0];
d = argument[1];
spr = argument[2];
sub = argument[3];
_x = argument[4];
_y = argument[5];
xs = argument[6];
ys = argument[7];
r = argument[8];
c = argument[9];
f = argument[10];
a = argument[11];

var ins = instance_create_depth(_x, _y, d, obj_echo);
with(ins)
{
	life_create(l);

	sprite_index = spr;
	image_index = sub;
	image_xscale = xs;
	image_yscale = ys;
	image_angle = r;
	fade = f;
	alpha  = a;
	color = c;
	
	image_speed = 0;
}

return ins;