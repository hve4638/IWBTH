with(sys_global)
{
    if !file_exists(CONFIG_DIRECTORY)
		return false;

    var f;
	var cf_string, tmp;
    f=  file_text_open_read(CONFIG_DIRECTORY);
		cf_string = file_text_read_string(f);
    file_text_close(f);

	tmp = ds_map_create();
	ds_map_read(tmp, cf_string);

	key[Input.up] = tmp[? "up"];
	key[Input.down] = tmp[? "down"];
	key[Input.left] = tmp[? "left"];
	key[Input.right] = tmp[? "right"];
	key[Input.jump] = tmp[? "jump"];
	key[Input.attack] = tmp[? "attack"];
	key[Input.dash] = tmp[? "dash"];
	fullscreen = tmp[? "fullscreen"];
	resolution_index = tmp[? "resolution_index"];
	resolution_width = tmp[? "resolution_width"];
	resolution_height = tmp[? "resolution_height"];
	config_mastervolum = tmp[? "volum_master"];
	config_music = tmp[? "volum_bgm"];
	config_sound = tmp[? "volum_sfx"];
	config_ui = tmp[? "ui"];

	ds_map_destroy(tmp);
	
	return true;
}
