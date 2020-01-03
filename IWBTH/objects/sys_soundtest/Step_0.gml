if keyboard_check_pressed(vk_enter)
{
	var idx = audio_play_sound(sound_idx, 1, 0);
	audio_sound_gain(idx, each_volum[? sound_idx], 0);
}

if keyboard_check_pressed(vk_backspace)
	audio_stop_all();

if keyboard_check(vk_up) || keyboard_check_pressed(vk_right)
	if audio_exists(sound_idx + 1)
		sound_idx ++;

if keyboard_check(vk_down) || keyboard_check_pressed(vk_left)
	if audio_exists(sound_idx - 1)
		sound_idx --;