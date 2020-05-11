///@desc Set volum

if !global.mute
{
	volum_music = 0.0;
	volum_sound = 0.0;

	if 0 <= bgm_p && audio_is_playing(bgm_p)
		audio_sound_gain(bgm_p, volum_music, 0);

	return 0;
}

volum_music = (config_mastervolum * config_music) / 10000;
volum_sound = (config_mastervolum * config_sound) / 10000;

if 0 <= bgm_p && audio_is_playing(bgm_p)
	audio_sound_gain(bgm_p, volum_music, 0);