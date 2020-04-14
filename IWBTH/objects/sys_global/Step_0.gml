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

if !isno(bgm_faded) && bgm_fadetime >= 0
{
	if audio_sound_is_playable(bgm_faded)
	{
		if bgm_fadetime == 0
		{
			audio_stop_sound(bgm_faded);
			bgm_faded = no;
		}
		else
			bgm_fadetime--;
	}
	else
	{
		bgmfade_delay = -1;
		bgm_faded = no;
	}
}

todo_step();