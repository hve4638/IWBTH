if ontimer
{
	time_idx += delta_time;
	
	if time_idx > 1000000
	{
		time++;
		time_idx = time_idx mod 1000000;
	}
}

if keyboard_check_pressed(vk_escape)
	game_restart();