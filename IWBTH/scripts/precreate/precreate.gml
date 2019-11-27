///@param x*
///@param y*
///@param layer*
var _x, _y, l
_x = argument_count > 0 ? argument[0] : 0;
_y = argument_count > 1 ? argument[1] : 0;
l = argument_count > 2 ? argument[2] : layer;

return instance_create_layer(_x, _y, l, obj_dummy);