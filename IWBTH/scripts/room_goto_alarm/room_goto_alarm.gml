///@param room
///@param alarm
///@param fadeout_time*
var rm, t, ft;
rm = argument[0];
t = argument[1];
ft = argument_count > 2 ? argument[2] : 50;

if !room_exists(rm)
	return -1;

var ins = instance_create_depth(0, 0, 0, obj_goto);
with(ins)
{
	alarm[0] = t;
	goto = rm;
	fadeout_time = ft;
}

return ins;