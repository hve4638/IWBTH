///@param sound
///@param loop
var nbgm, loop;
nbgm = argument_count > 0 ? argument[0] : no;
loop = argument_count > 1 ? argument[1] : false;

with(sys_global)
{
	if 0 < volum_music
	{
	    if bgm_p != nbgm || !audio_exists(nbgm)
		{
	        audio_stop_sound(bgm_p);
	        bgm_p = nbgm;
	    }
	
		if audio_exists(nbgm)
		{
			if !audio_is_playing(nbgm)
				bgm_ind = audio_play_sound(nbgm,0,loop);

			audio_sound_gain(nbgm, volum_music, 0);
		}
		
		return bgm_ind;
	}
}

return no;