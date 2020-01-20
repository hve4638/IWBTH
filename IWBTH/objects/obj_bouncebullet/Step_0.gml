life_step();

bounce_cnt -= 0.01;
image_angle = direction;


if 0 < bounce_cnt
{
	if x < 0 || x > room_width
	{
		hspeed = -hspeed;
		x += hspeed * 2;
		bounce_cnt--;
	}

	if y < 0 || y > room_height
	{
		vspeed = -vspeed;
		y += vspeed * 2;
		bounce_cnt--;
	}
}