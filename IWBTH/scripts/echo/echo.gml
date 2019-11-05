///@param life
///@param depth
///@param isfade
///@param sprite
///@param subimg
///@param x
///@param y
///@param xscale
///@param yscale
///@param angle
///@param color
///@param alpha
var spr, sub, _x, _y, xs, ys, r, a, c;
var l, d, f;
l = argument[0];
d = argument[1];
f = argument[2];
spr = argument[3];
sub = argument[4];
_x = argument[5];
_y = argument[6];
xs = argument[7];
ys = argument[8];
r = argument[9];
c = argument[10];
a = argument[11];

var ins = instance_create_depth(_x, _y, d, obj_echo);
with(ins)
{
	isfade = f;
	life = l;
	sprite_index = spr;
	image_index = sub;
	image_xscale = xs;
	image_yscale = ys;
	image_angle = r;
	alpha  = a;
	color = c;
	image_speed = 0;
}

return ins;