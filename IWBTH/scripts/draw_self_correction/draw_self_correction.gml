///@desc draw_self_correction
var px, py;
px = x;
py = y;
x = round(x);
y = round(y);
draw_self();

x = px;
y = py;