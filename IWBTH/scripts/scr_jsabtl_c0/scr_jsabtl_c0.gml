///@argu x
///@argu y
///@argu direction
///@argu time
///@argu instime*
var xx, yy, dir, t, it;
xx = argument[0];
yy = argument[1];
dir = argument[2] - 90;
t = argument[3];
it = argument_count > 4 ? argument[4] : 25;

for(var i = 0; i < 2; i++)
{
	insarr[i] = instance_create_layer(xx, yy, L_BELOW, obj_jsabwarning_laser);
	with(insarr[i])
	{
		life_create(t);
		alphap = 0;
		alphato = 0.3;
		alphawave = 0.01;
		image_xscale = 0.75;
		image_yscale = 1280;
		ins_life = it;
		//cout("it: ", it);
		
		thick = image_xscale;
		length = image_yscale;
		image_angle = dir + i * 180;
	}
}
return insarr;