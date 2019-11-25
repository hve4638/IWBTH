///@param x
///@param y
///@param layer*
var _x, _y, l
_x = argument[0];
_y = argument[1];
l = argument_count > 2 ? argument[2] : layer;

return instance_create_layer(_x, _y, l, obj_dummy);