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
	if 0 //|| 1
	{
	var n = bgm(snd_core, 0);
	var sec = 1400;
	audio_sound_set_track_position(n, sec / 50);
	timeline(tl_jsab_core, sec);
	}
	else
	timeline(tl_jsab_core);
}

if keyboard_check_pressed(ord("K"))
{
	for(var i = 0; i < 8; i++)
	{
		with(instance_create_layer(room_width / 7 * i, 0, L_ABOVE, obj_jsablaser))
		{
			life_create(500);
			onbounce = true;
			bounce_cycle = 40;
			bounce_index = 75 / 7 * i;
			thick = 4;
			length = 128;
			image_alpha = 1;
		}
		
		with(instance_create_layer(room_width / 7 * i, room_height, L_ABOVE, obj_jsablaser))
		{
			life_create(500);
			onbounce = true;
			bounce_cycle = 40;
			bounce_index = 75 / 7 * i;
			thick = 4;
			length = 128;
			image_alpha = 1;
			image_angle = 180;
		}
	}
}