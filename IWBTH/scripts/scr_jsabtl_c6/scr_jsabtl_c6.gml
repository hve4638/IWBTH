///@argu x
///@argu y
///@argu direction
///@argu time
///@argu instime*
var xx, yy, dir, t, it;
xx = argument[0];
yy = argument[1];
dir = argument[2];
t = argument[3];
it = argument_count > 4 ? argument[4] : 25;

var ins = instance_create_layer(Player.x, Player.y, L_BELOW, obj_jsabwarning_block);
with(ins)
{
	life_create(t);
	alphap = 0;
	alphato = 0.3;
	alphawave = 0.01;
	ins_life = it;
		
	thick = 2.5;
	length = 2.5;
	image_angle = dir;
}

return ins;