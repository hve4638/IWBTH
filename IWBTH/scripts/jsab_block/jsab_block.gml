///@argu x
///@argu y
///@argu time
///@argu life
var xx, yy, t, l;
xx = argument[0];
yy = argument[1];
t = argument[2];
l = argument[3];

var ins = instance_create_layer(xx, yy, L_BELOW, obj_jsabwarning_block);
with(ins)
{
	life_create(t);

	ins_life = l;
}

return ins;