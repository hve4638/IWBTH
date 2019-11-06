///@param life*
///@param isfade*
///@param color*
///@param alphamult*
var l, f, c, m;
l = argument_count > 0 ? argument[0] : 50;
f = argument_count > 1 ? argument[1] : true;
c = argument_count > 2 ? argument[2] : -1;
m = argument_count > 3 ? argument[3] : 1.0;

var xs, ys;
xs = image_xscale;
ys = image_yscale;

if object_index == obj_player
	xs *= look

return echo(l, depth+1, f, sprite_index, image_index, x, y, xs, ys, image_angle, c, image_alpha * m);