///@param x
///@param y
///@param life*
///@param isfade*
///@param color*
///@param alpha_mult*
var _x, _y;
var l, f, c, m;
_x = argument[0];
_y = argument[1];
l = argument_count > 2 ? argument[2] : 50;
f = argument_count > 3 ? argument[3] : true;
c = argument_count > 4 ? argument[4] : -1;
m = argument_count > 5 ? argument[5] : 1.0;

var xs, ys;
xs = image_xscale;
ys = image_yscale;

if image_index == obj_player
	xs *= look

return echo(l, depth+1, f, sprite_index, image_index, _x, _y, xs, ys, image_angle, c, image_alpha * m);