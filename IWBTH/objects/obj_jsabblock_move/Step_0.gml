if time_idx mod move_delay == 0
{	
	with(instance_create_layer(x, y, L_BELOW, obj_jsabwarning_block))
	{
		life_create(15);
		ins_life = 35;
		
		length = other.length;
		thick = other.thick;
		
		image_xscale = length;
		image_yscale = thick;
		ins_destroytime = 5;
	}

	x += hspd;
	y += vspd;
}