life_step();

if time_idx mod 3 == 0
{
	var i = time_idx div 3;
	var xx = x + dcos(i * 25) * 64 + hspeed * 4;
	var yy = y;
	var d = dsin(i * 25) * 5 * sign(hspeed);

	with(instance_create_layer(xx, yy, L_ABOVE, obj_laser))
	{
		life_create(15);
		sprite_change(spr_radiancelaser_effect);
		image_angle = 270;
		blend = bm_normal;
		num = 1.3;
		den = 1;
		den_add = 0.25;
		damagethick = 10;
		killforce = false;
		
		alpha = [0.75, 0.0];
		type = other.id;
		//posdir = i * 15;

		depth += d;
	}
}

/*
with(obj_laser)
{
	if type == other.id
	{
		var d = posdir;
		var xx = other.x + dcos(d) * 64;
		var yy = other.y;
		x = xx;
		y = yy;
		
		//posdir += 5;
	}
}*/

/*
	
	with(instance_create_layer(xx, yy, L_ABOVE, obj_laser))
	{
		life_create(9);
		sprite_change(spr_laser, 2, 0);
		image_angle = 270;
		image_alpha = 0.5;
		blend = bm_normal;
		num = 0.6 * s;
		den = 1 * s;
		den_add = 0.5 * s;
		damagethick = 10;
		killforce = false;
		
		alpha = [1.0, 0.6, 0.0];

		depth += d;
	}
			
	with(instance_create_layer(xx, yy, L_ABOVE, obj_laser))
	{
		life_create(9);
		sprite_change(spr_laser, 1, 0);
		image_angle = 270;
		image_alpha = 0.3;
		blend = bm_add;
		num = 1 * s;
		den = 1 * s;
		den_add = 0.5 * s;
		damagethick = 10;
		killforce = false;
		
		alpha = [0.6, 0.25, 0.0];

		depth += d;
	}
*/