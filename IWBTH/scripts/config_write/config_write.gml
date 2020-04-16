with(sys_global)
{
    if file_exists(CONFIG_DIRECTORY)
		file_delete(CONFIG_DIRECTORY);

	var cf_string, tmp;
	tmp = ds_map_create();

	tmp[? "up"] = key[Input.up];
	tmp[? "down"] = key[Input.down];
	tmp[? "left"] = key[Input.left];
	tmp[? "right"] = key[Input.right];
	tmp[? "jump"] = key[Input.jump];
	tmp[? "attack"] = key[Input.attack];
	tmp[? "dash"] = key[Input.dash];
	tmp[? "fullscreen"] = fullscreen;
	tmp[? "resolution_index"] = resolution_index;
	tmp[? "resolution_width"] = resolution_width;
	tmp[? "resolution_height"] = resolution_height;
	tmp[? "volum_master"] = config_mastervolum;
	tmp[? "volum_bgm"] = config_music;
	tmp[? "volum_sfx"] = config_sound;
	tmp[? "ui"] = config_ui;
	cf_string = ds_map_write(tmp);
	
	ds_map_destroy(tmp);
	
    var f = file_text_open_write(CONFIG_DIRECTORY);
        file_text_write_string(f, cf_string);
    file_text_close(f);
}