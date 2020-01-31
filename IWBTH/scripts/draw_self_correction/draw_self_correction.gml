///@argu x*
///@argu y*
if !sprite_exists(sprite_index)
	return -1;

var px, py;
px = argument_count > 0 ? argument[0] : x;
py = argument_count > 1 ? argument[1] : y;
var tx, ty;
tx = x; ty = y;
x = round(px);
y = round(py);
draw_self();

x = tx;
y = ty;