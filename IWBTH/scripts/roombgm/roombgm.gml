///@param room*
var nbgm, rm, loop;
rm = argument_count > 1 ? argument[0] : room;

nbgm = get_room_bgm(rm);
loop = get_room_loop(rm);

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
