///@param name
///@param idx
///@param x
///@param y
var name, idx;
var _x, _y;
name = argument[0];
idx = argument[1];
_x = argument[2];
_y = argument[3];

with(instance_create_layer(_x, _y, L_SYS, obj_customkey))
{
	self.name = name;
	self.arr = key;
	self.idx = idx;

	self.currentkey = key_get_name(self.arr[idx]);
}