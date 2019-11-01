if ontimer
{
	time_idx += delta_time;
	
	if time_idx > 1000000
	{
		time++;
		time_idx = time_idx mod 1000000;
	}
}

fade_alpha = clamp(fade_alpha + fade_add, 0.0, 1.0);

if keyboard_check_pressed(vk_escape)
	game_restart();