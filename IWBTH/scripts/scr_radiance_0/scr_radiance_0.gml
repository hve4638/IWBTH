var idx = argument[0];
var xx, yy;
xx = x + ox;
yy = y + oy;
switch(idx)
{
	case 0:
		sprite_change(spr_radiance_focus);
		//laser_dir = direction_to_object(obj_player);
	break;
	
	case 10:
		laser_dir = irandom(360/8);
		for(var i = 0; i < 360; i += 360/8)
		{
			with(instance_create_layer(xx, yy, L_ABOVE, obj_effect))
			{
				life_create(30);
				sprite_change(spr_laserball, 0, 0);
				image_angle = other.laser_dir + i;
				image_xscale = 65;
				image_yscale = 1;
				image_alpha = 0.6;
				blend = bm_add;
			}
		}
	break;
	
	case 35:
		for(var i = 0; i < 360; i += 360/8)
		{
			with(instance_create_layer(xx, yy, L_ABOVE, obj_laser))
			{
				life_create(30);
				sprite_change(spr_laser, 2, 0);
				image_angle = other.laser_dir + i;
				image_alpha = 1.0;
				blend = bm_add;
				num = 1.8;
				den = 1;
				den_add = 0.07;
				depth++;
			}
			
			with(instance_create_layer(xx, yy, L_ABOVE, obj_laser))
			{
				life_create(30);
				sprite_change(spr_laser, 1, 0);
				image_angle = other.laser_dir + i;
				image_alpha = 0.6;
				blend = bm_add;
				num = 1.25;
				den = 1;
				den_add = 0.07;
			}
			
			screenshake(2, 10);
		}
	break;
}