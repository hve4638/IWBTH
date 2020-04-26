///@argu snd
///@argu time
var snd, t;
snd = argument[0];
t = argument[1];

if audio_is_playing(snd)
{
	audio_sound_gain(snd, 0.0, t);

	with(instance_create_layer(x, y, L_SYS, obj_soundfader))
	{
		soundid = snd;
		alarm[0] = t;
	}
}