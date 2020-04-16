///@param name
///@param idx
///@param x
///@param y
var str, idx;
var _x, _y;
str = argument[0];
idx = argument[1];
_x = argument[2];
_y = argument[3];

with(instance_create_layer(_x, _y, L_SYS, obj_customkey))
{
	name = str;
	key_index = idx;

	currentkey = key_get_name(key[key_index]);
}