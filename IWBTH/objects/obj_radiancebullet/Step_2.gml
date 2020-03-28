image_angle += 30;

if ontarget
{
	hspeed += clamp((Player.x - x) / 200, -5, 5);
	vspeed += clamp((Player.y - y) / 200, -5, 5);
	speed = min(speed, 20);
}
else
	speed = min(speed + 0.2, 20);

if cancollision && tile_meeting(0, 0)
{
	instance_destroy();
}

time_idx++;