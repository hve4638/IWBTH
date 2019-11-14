///@param room
///@param alarm
var rm, t;
rm = argument[0];
t = argument[1];

if !room_exists(rm)
	return -1;

with(instance_create_depth(0, 0, 0, obj_goto))
{
	alarm[0] = t;
	goto = rm;
}