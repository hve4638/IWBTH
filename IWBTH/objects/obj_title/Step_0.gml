while(!ds_queue_empty(datarenew))
{
	var _key = string(ds_queue_dequeue(datarenew));
	switch(_key)
	{
		case "resolution":
			resolution_index = getdata(_key, resolution_index);
			resolution_update();
		break;

		case "fullscreen":
			fullscreen = getdata(_key, fullscreen);
			resolution_update();
		break;

		case "mastervolum":
			config_mastervolum = getdata(_key, config_mastervolum);
			volum_update();
		break;

		case "musicvolum":
			config_music = getdata(_key, config_music);
			volum_update();
		break;

		case "soundvolum":
			config_sound = getdata(_key, config_sound);
			volum_update();
			
			sfx(snd_ui_click);
		break;

		case "configwrite":
			config_write();
		break;
	}
}