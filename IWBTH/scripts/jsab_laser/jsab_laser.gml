///@argu x
///@argu y
///@argu dir
///@argu time
///@argu life
var xx, yy, dir, t, l;
xx = argument[0];
yy = argument[1];
dir = argument[2] + 90;
t = argument[3];
l = argument[4];

var ins = instance_create_layer(xx, yy, L_BELOW, obj_jsabwarning_laser);
with(ins)
{
	life_create(t);
	alphap = 0;
	alphato = 0.3;
	alphawave = 0.01;
	ins_life = l;
	
	image_angle = dir;
}

return ins;