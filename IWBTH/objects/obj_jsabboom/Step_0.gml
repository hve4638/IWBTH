life_step();

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

radius = min(radius + 0.5, 12);
sparkle_time = max(6, sparkle_time - 0.2);
image_angle += 3;