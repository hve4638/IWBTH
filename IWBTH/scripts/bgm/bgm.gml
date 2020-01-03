///@param sound
///@param loop
var nbgm, loop;
nbgm = argument_count > 0 ? argument[0] : noone;
loop = argument_count > 1 ? argument[1] : false;

with(sys_global)
{
	if 0 < volum_music
	{
	    if bgm_p != nbgm || nbgm == noone
		{
	        audio_stop_sound(bgm_p);
	        bgm_p = nbgm;
	    }
	
		if 0 <= nbgm
		{
			if !audio_is_playing(nbgm)
				audio_play_sound(nbgm,0,loop);
			audio_sound_gain(nbgm, volum_music, 0);
		}
	}
}