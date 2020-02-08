var idx = argument[0];
var w, h;
w = room_width div 2;
h = room_height div 2;

var a = idx * 30;

if 360 < a
	return no;
else
{	
	with(instance_create_layer(w, h, L_BELOW, obj_jsabwarning_laser))
	{
		life_create(30);
		alphap = 0;
		alphato = 0.2;
		alphawave = 0.01;
		image_xscale = 0.75;
		image_yscale = 1280;
		ins_life = 15 + idx * 5;
		//cout("it: ", it);
		thick = image_xscale;
		length = image_yscale;
		image_angle = a;
	}	
}
	
return 0;