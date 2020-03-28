life_step();

if time_idx mod 2 == 0
{
	with(instance_create_layer(x, y, L_ABOVE, obj_laser))
	{
		life_create(5);
		sprite_change(spr_laser, 2, 0);
		image_angle = 270;
		blend = bm_add;
		num = 3;
		den = 1;
		alpha = [0, 1, 1, 0];
		den_add = 0.35;
		damagethick = 1.25 / 2.4;
		killforce = false;
		
		image_alpha = 0;
		depth++;
	}
			
	with(instance_create_layer(x, y, L_ABOVE, obj_laser))
	{
		life_create(5);
		sprite_change(spr_laser, 1, 0);
		image_angle = 270;
		image_alpha = 0.35;
		blend = bm_add;
		num = 4;
		den = 1;
		alpha = [0, 0.35, 0.35, 0.35, 0];
		den_add = 0.35;
		damagethick = 1.25 / 2.4;
		killforce = false;
		
		image_alpha = 0;
	}
}