onground = tile_meeting(0, 1);

var dec = 1;
if !onground
	dec = 0.1;

if abs(hspd) < dec
	hspd = 0;
else if hspd < 0
	hspd += dec;
else if hspd > 0
	hspd -= dec;

if !onground
	vspd += grav;

if install_idx == install_time * 2 || (install_idx < install_time * 2 && install_idx > install_time && install_y <= y)
{
	hspd = 0; vspd = 0;
	grav = 0;

	install_idx = install_time + 1;
	onboom = true;
	oncircle = true;
}
install_idx++;

if onboom
{
	if boom_idx++ == boom_time
	{
		var r = part_radius;
		
		with(instance_create_layer(x, y, L_PLAYER, obj_particle_emitter))
		{
			life_create(3);
			ind = Particle.explosion;
			x1 = other.x - r;
			x2 = other.x + r;
			y1 = other.y - r;
			y2 = other.y + r;
			num = 15;
			shape = 1;
			dis = 1;
		}
		
		with(instance_create_layer(x, y, L_BELOW, obj_damagebox_life))
		{
			sprite_change(spr_headhunterboom);
			sprite_set_size(other.boom_radius, other.boom_radius);
		}
		
		screenshake(12, 2);
		instance_destroy();
	}
}

if oncircle
	circle_idx = min(circle_time, circle_idx+1);


if !tile_meeting(0, 0) && !(hspd == 0 && vspd == 0)
{
	//var xx, yy;
	echo_self(5, c_red, 0.0, [0.5, 0]);

	if tile_meeting(hspd, 0) && hspd != 0
	{
		var i = sign(hspd);
		while(tile_meeting(sign(hspd), 0))
		{
			x += sign(hspd);
		
			if i != sign(--hspd)
			{
				hspd = 0;
				break;
			}
		}
		hspd = -hspd * 2 div 3;
	}

	if tile_meeting(0, vspd) && vspd > 0
	{
		var i = sign(vspd);
		while(tile_meeting(sign(vspd), 0))
		{
			x += sign(vspd);
		
			if i != sign(--vspd)
			{
				vspd = 0;
				break;
			}
		}
		vspd = - vspd * 2 div 3;
	}

	px = x;
	py = y;
	x += hspd;
	y += vspd;
}