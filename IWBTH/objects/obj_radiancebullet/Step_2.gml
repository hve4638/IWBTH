image_angle += 30;

if ontarget
{
	hspeed += clamp((Player.x - x) / 256, -4, 4);
	vspeed += clamp((Player.y - y) / 256, -4, 4);
}
else
	speed += 1;

speed = min(speed, 16);

if cancollision && tile_meeting(0, 0)
{
	with(instance_create_layer(x, y, L_ABOVE, obj_effect))
	{
		life_create(10);
		sprite_change(spr_radiancebullet_explosion);
		imageloop = false;
		xscale = 1;
		yscale = 1;
		scale = [1, 1.5];
		alpha = [0.75, 0];
		blend = bm_add;
	}

	instance_destroy();
}

time_idx++;