var size = array_size(tg_on);

for(var i = 0; i < size; i++)
{
	if tg_on[i]
	{
		var idx = tg_idx[i]++;
		var scr = asset_get_index("scr_jsabtl_" + string(i));

		if script_exists(scr)
		{
			var f = script_execute(scr, idx);

			if f == no
				tg_on[i] = false;
		}
	}
}

if timeline_running && !instance_exists(obj_player)
	timeline();

if !instance_exists(obj_player) && audio_is_playing(snd_core)
{
	var p = audio_sound_get_pitch(bgm_p);

	if 0 < p
		audio_sound_pitch(bgm_p, p - 0.02);
	else
		audio_stop_sound(bgm_p);
}