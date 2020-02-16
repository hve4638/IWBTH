///@param x
///@param y
///@param life*
///@param color*
///@param fade*
///@param alpha*
var _x, _y;
var l, f, c, a;
_x = argument[0];
_y = argument[1];
l = argument_count > 2 ? argument[2] : 50;
c = argument_count > 3 ? argument[3] : no;
f = argument_count > 4 ? argument[4] : true;
a = argument_count > 5 ? argument[5] : [image_alpha, 0];

var xs, ys;
xs = image_xscale;
ys = image_yscale;

if image_index == obj_player
	xs *= look

return echo(l, depth+1, sprite_index, image_index, _x, _y, xs, ys, image_angle, c, f, a);