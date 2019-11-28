if ontimer
{
	time_idx += delta_time;
	
	if time_idx > 1000000
	{
		time++;

		time_idx -= 1000000;
	}
}

if 0 < intro_time
	intro_alpha += 0.03;
else
	intro_alpha -= 0.03;

intro_alpha = clamp(intro_alpha, 0, 1.0);

if intro_alpha == 1.0
	intro_time = max(0, intro_time-1);

if canrestart && button_press(Input.restart)
	load();

if 0 < fade_idx
{
	fade_alpha = value_merge(fade_alpha_p, fade_alpha_to, 1 - fade_idx/fade_time);
	
	fade_idx = max(fade_idx - 1, 0);
}
else if fade_idx == 0
{
	fade_alpha = fade_alpha_to;
	fade_idx = -1;
}

if keyboard_check_pressed(vk_escape)
	game_restart();