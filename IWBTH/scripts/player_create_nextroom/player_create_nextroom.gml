///@argu x
///@argu y
///@argu addx*
///@argu addy*
///@argu modx*
///@argu mody*
var setx, sety, addx, addy, modx, mody;
setx = argument_count > 0 ? argument[0] : 0;
sety = argument_count > 1 ? argument[1] : 0;
addx = argument_count > 2 ? argument[2] : 0;
addy = argument_count > 3 ? argument[3] : 0;
modx = argument_count > 4 ? argument[4] : 0;
mody = argument_count > 5 ? argument[5] : 0;

var ins = instance_create_layer(setx, sety, L_PLAYER, obj_create_nextroom);
with(ins)
{
	x += addx;
	y += addy;
	
	if 0 < modx
		x = modulo(x, modx);
	if 0 < mody
		y = modulo(y, mody);
}
