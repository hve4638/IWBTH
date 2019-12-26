///@argu x*
///@argu y*
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