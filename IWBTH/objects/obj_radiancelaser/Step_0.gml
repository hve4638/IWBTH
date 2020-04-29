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