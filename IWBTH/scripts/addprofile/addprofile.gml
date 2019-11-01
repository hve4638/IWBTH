///@param num
///@param x
///@param y
var num, _x, _y;
num = argument[0];
_x = argument[1];
_y = argument[2];

with(instance_create_layer(0, 0, L_SYS, obj_profile))
{
	number = num;

	dw_x = _x;
	dw_y = _y;
}