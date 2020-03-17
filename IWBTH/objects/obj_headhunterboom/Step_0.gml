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
		
		if distance_to_object(obj_player) <= boom_radius
		{
			var dir, dis, len;
			dis = distance_to_object(obj_player);
			dir = point_direction(x, y, obj_player.x, obj_player.y);
			len = value_merge(18, 3, dis/boom_radius);

			kill(len, dir);
		}
		
		sfx(snd_explode3);
		screenshake(12, 2);
		instance_destroy();
	}
}

if oncircle
	circle_idx = min(circle_time, circle_idx+1);

px = x;
py = y;

if hspd > 0 && x + hspd > w_right
{
	var l = abs(x - w_right);
	x = w_right - l;
	hspd = -hspd;
}
else if hspd < 0 && x + hspd < w_left
{
	var l = abs(x - w_left);
	x = w_left + l;
	hspd = -hspd;
}
else
	x += hspd;

if vspd < 0 && y + vspd < w_top
{
	var l = abs(y - w_top);
	y = w_top + l;
	vspd = -vspd;
}
else if vspd > 0 && y + vspd > w_bottom
{
	var l = abs(y - w_bottom);
	y = w_bottom + l;
	vspd = -vspd * 0.75;
}
else 
	y += vspd;