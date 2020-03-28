life_step();

if time_idx mod 5 == 0
{
	var i = time_idx;
	var xx = x + dcos(i * 10) * 64 + hspeed * 2;
	var yy = y;
	var d = dsin(i * 10) * 5;
	var s = merge_value(0.3, 4, (1 + dsin(time_idx * 10)) / 2);
	
	with(instance_create_layer(xx, yy, L_ABOVE, obj_laser))
	{
		life_create(10);
		sprite_change(spr_laser, 2, 0);
		image_angle = 270;
		image_alpha = 0.5;
		blend = bm_add;
		num = 1 * s;
		den = 1 * s;
		den_add = 0.5 * s;
		damagethick = 10;
		killforce = false;
		
		alpha = [0.4, 0];

		depth += d;
	}
			
	with(instance_create_layer(xx, yy, L_ABOVE, obj_laser))
	{
		life_create(10);
		sprite_change(spr_laser, 1, 0);
		image_angle = 270;
		image_alpha = 0.3;
		blend = bm_add;
		num = 1.4 * s;
		den = 1 * s;
		den_add = 0.5 * s;
		damagethick = 10;
		killforce = false;
		
		alpha = [0.3, 0];

		depth += d;
	}
}