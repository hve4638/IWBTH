config_audio_def();

with(sys_title)
{
	arr[TitleArray.mastervolum] = config_mastervolum  * 100;
	arr[TitleArray.musicvolum] = config_music * 100;
	arr[TitleArray.soundvolum] = config_sound  * 100;

	event_user(0);
}