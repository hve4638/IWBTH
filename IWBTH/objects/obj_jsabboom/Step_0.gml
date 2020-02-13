life_step();

if on_to
{
	x += round((tox - x) / tospd);
	y += round((toy - y) / tospd);

	if point_distance(x, y, tox, toy) < 1
		on_to = false;
}

if sparkle_time > 0
{
	var n = floor(sparkle_time);

	if (life_idx mod n) / n < 0.5
		color = c_white;
	else
		color = c_jsab;
}
else
	color = c_white;

radius = min(radius + 0.2, radius_max);
sparkle_time = max(6, sparkle_time - 0.2);
image_angle += 8;