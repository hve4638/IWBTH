var nbgm, loop;

nbgm = room_get_sound(room);
loop = room_get_soundloop(room);

bgm(nbgm, loop);
/*
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
		{
			audio_play_sound(nbgm,0,loop);
			audio_sound_gain(nbgm, volum_music, 0);
		}
	}
}
*/