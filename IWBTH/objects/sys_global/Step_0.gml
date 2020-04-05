if ontimer
{
	time_idx += delta_time;
	
	if time_idx > 1000000
	{
		time++;

		if current_stage
			stage_time[current_stage]++;

		time_idx -= 1000000;
	}
}

var gpcnt = gamepad_get_device_count();
for(var i = 0; i < gpcnt; i++)
{
	var n = true;
	if gamepad_is_connected(i)
	{
		gamepad[i] = true;
		if n
		{
			current_gamepad = i;
			n = false;
		}
	}
	else
		gamepad[i] = false;
}

if 0 < intro_time
	intro_alpha += 0.03;
else
	intro_alpha -= 0.03;

intro_alpha = clamp(intro_alpha, 0, 1.0);

if intro_alpha == 1.0
	intro_time = max(0, intro_time - 1);

if fade_idx > 0
{
	fade_alpha = value_merge(fade_alpha_p, fade_alpha_to, 1 - fade_idx/fade_time);
	
	fade_idx = max(fade_idx - 1, 0);
}
else
{
	fade_alpha = fade_alpha_to;

	fade_idx = no;
}

todo_step();