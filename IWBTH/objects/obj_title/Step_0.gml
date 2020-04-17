if check_keyboard
{
	if !(mouse_x == mouse_px && mouse_y == mouse_py) || mouse_check_button_pressed(mb_left)
		check_keyboard = false;
	
	if !instance_exists(onselect_id)
	{
		onselect_id = select_temp[| 0];
	}
	else
	{
		if keyboard_check_pressed(vk_up)
		{
			var ins = onselect_id.previous_id;
			
			if ins.enable
				onselect_id = ins;
		}
		else if keyboard_check_pressed(vk_down)
		{
			var ins = onselect_id.next_id;

			if ins.enable
				onselect_id = ins;
		}
	}
}
else
{
	if keyboard_check_pressed(vk_anykey)
		check_keyboard = true;
}
mouse_px = mouse_x;
mouse_py = mouse_y;


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