///@param sound
///@param loop
var nbgm, loop;
nbgm = argument_count > 0 ? argument[0] : no;
loop = argument_count > 1 ? argument[1] : false;

with(sys_global)
{
	if bgm_p != nbgm || !audio_exists(nbgm)
	{
	    audio_stop_sound(bgm_p);
	    bgm_p = nbgm;
	}
	
	if bgm_p == bgm_faded
	{
		if audio_is_playing(bgm_faded)
		{
			audio_stop_sound(bgm_faded);
			bgm_faded = no;
		}
	}
	
	if audio_exists(nbgm)
	{
		if !audio_is_playing(nbgm)
			bgm_ind = audio_play_sound(nbgm,0,loop);

		audio_sound_gain(bgm_p, volum_music, 0);
		audio_sound_pitch(bgm_p, 1.0);
	}
		
	return bgm_ind;
}

return no;