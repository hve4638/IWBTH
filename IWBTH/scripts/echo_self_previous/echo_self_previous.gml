///@param interval
///@param life
///@param alpha*
///@param color*
///@param fade*
var int;
var life, col, fade, alpha;
int = argument[0];
life = argument[1];
alpha = argument_count > 2 ? argument[2] : [image_alpha, 0];
col = argument_count > 3 ? argument[3] : no;
fade = argument_count > 4 ? argument[4] : 1.0;

var xx, yy;
var dir, dis;
dir = point_direction(xprevious, yprevious, x, y);
dis = point_distance(xprevious, yprevious, x, y);
var arr = array_create(dir div int, noone);
for(var i = 0; i < dis; i += int)
{
	xx = xprevious + lengthdir_x(i, dir);
	yy = yprevious + lengthdir_y(i, dir);
	var ins = echo_self_pos(xx, yy, life, alpha, col, fade);

	arr[i] = ins;
}

return arr;