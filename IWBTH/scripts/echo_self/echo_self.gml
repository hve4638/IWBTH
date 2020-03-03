///@param life*
///@param color*
///@param fade*
///@param alpha*
var l, f, c, a;
l = argument_count > 0 ? argument[0] : 50;
c = argument_count > 1 ? argument[1] : no;
f = argument_count > 2 ? argument[2] : 1.0;
a = argument_count > 3 ? argument[3] : [image_alpha, 0];

var xs, ys;
xs = image_xscale;
ys = image_yscale;

if object_index == obj_player
	xs *= look

return echo(l, depth+1, sprite_index, image_index, x, y, xs, ys, image_angle, c, f, a);