var size = arr_size(tg_on);

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
{
	timeline();
}

if keyboard_check_pressed(vk_space)
{
	var n = bgm(snd_core, 0);
	audio_sound_set_track_position(n, 750 / 50);
	
	timeline(tl_jsab_core, 750);
}
