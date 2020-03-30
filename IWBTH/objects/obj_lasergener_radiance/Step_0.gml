life_step();

var idx = time_idx++;
var xx, yy;
xx = x;
yy = y;

switch(idx)
{
	case 0:
		for(var i = 0; i < 360; i += 360/laser_cnt)
		{
			with(instance_create_layer(xx, yy, L_ABOVE, obj_effect))
			{
				life_create(25);
				sprite_change(spr_laserball, 0, 0);
				image_angle = other.laser_dir + i;
				xscale = 75;
				yscale = 1;
				blend = bm_add;
				alpha = [0.3, 1, 1, 1, 0];
			}
		}
	break;
	
	case 25:
		for(var i = 0; i < 360; i += 360/laser_cnt)
		{
			with(instance_create_layer(xx, yy, L_ABOVE, obj_laser))
			{
				life_create(26);
				sprite_change(spr_laser, 2, 0);
				image_angle = other.laser_dir + i;
				image_alpha = 1.0;
				blend = bm_add;
				num = 2.4;
				den = 1;
				den_add = 0.275;
				damagethick = 1.25 / 2.4;
				killforce = false;
				
				depth++;
			}
			
			with(instance_create_layer(xx, yy, L_ABOVE, obj_laser))
			{
				life_create(26);
				sprite_change(spr_laser, 1, 0);
				image_angle = other.laser_dir + i;
				image_alpha = 0.6;
				blend = bm_add;
				num = 2;
				den = 1;
				den_add = 0.275;
				damagethick = 1.25 / 2.4;
				killforce = false;
			}
			
			screenshake(2, 10);
		}
	break;
}