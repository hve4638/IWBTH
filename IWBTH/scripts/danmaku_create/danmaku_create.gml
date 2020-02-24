///@argu x
///@argu y
///@argu direction
///@argu speed
///@argu type*
var xx, yy, dir, spd, type;
xx = argument[0];
yy = argument[1];
dir = argument[2];
spd = argument[3];
type = argument_count > 4 ? argument[4] : no;

var ins = instance_create_layer(xx, yy, L_ABOVE, obj_danmaku)
with(ins)
{
	direction = dir;
	speed = spd;
	self.type = type;
}

return ins;