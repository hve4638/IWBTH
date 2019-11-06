/// @description screenshake
/// @param power
/// @param time
var _pow, _time
_pow = argument[0] > 0 ? argument[0] : 0;
_time = argument_count > 1 ? argument[1] : 5;

with(sys_camera)
{
	if 0<_pow
	{
		ds_priority_add(shake_queue,_pow,_pow);
		shake_map[? _pow] = time_idx + _time;
	}
	else
	{
		ds_priority_clear(shake_queue);
		ds_map_clear(shake_map);
	}
}
