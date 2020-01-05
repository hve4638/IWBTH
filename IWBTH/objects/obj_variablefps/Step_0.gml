life_step();

if life_idx < life
{
	var p2 = life_idx/life * arrlength;
	var p = floor(p2);

	if fps_idx != p
	{
		fps_idx = p;
		room_speed = fps_speed[p];
	}
}