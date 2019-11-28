///@param x
///@param y
///@param spr
///@param time
var _x, _y, spr, t;
_x = argument_count > 0 ? argument[0] : sys_global.intro_x;
_y = argument_count > 1 ? argument[1] : sys_global.intro_y;
spr = argument_count > 2 ? argument[2] : sys_global.intro_spr;
t = argument_count > 3 ? argument[3] : 50;

with(sys_global)
{
	intro_x = _x;
	intro_y = _y;
	intro_spr = spr;
	intro_time = t;
}