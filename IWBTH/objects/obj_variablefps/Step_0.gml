life_step();

if life_idx < life
{
	var p = life_idx/life * arrlength;
	var p2 = floor(p);

	room_speed = fps_speed[p2];
}