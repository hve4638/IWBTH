///@argu count
///@argu time
var cnt = argument[0];
var t = argument[1];
var xx, yy;

while(1)
{
	xx = irandom(room_width div 80);
	yy = irandom(room_height div 80);
	
	if instance_exists(obj_jsabwarning_block)
	{
		ins = instance_nearest(xx, yy, obj_jsabwarning_block);
		
		if point_direction(xx, yy, ins.x, ins.y) < 64
			continue;
	}
	if instance_exists(obj_jsabblock)
	{
		ins = instance_nearest(xx, yy, obj_jsabblock);
		
		if point_direction(xx, yy, ins.x, ins.y) < 64
			continue;
	}
	
	break;
}

xx = xx * 80 + 40;
yy = yy * 80 + 40;

var ins = instance_create_layer(xx, yy, L_BELOW, obj_jsabwarning_block);
with(ins)
{
	life_create(t);

	image_xscale = 2.5;
	image_yscale = 2.5;
	length = image_yscale;
	thick = image_xscale;
}

return ins;