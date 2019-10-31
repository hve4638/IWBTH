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
	tmp[? "bgm"] = config_bgm;
	tmp[? "sfx"] = config_sfx;
	tmp[? "ui"] = config_ui;
	
	cf_string = ds_map_write(tmp);
	
	ds_map_destroy(tmp);
	
    var f;
    f=file_text_open_write(CONFIG_DIRECTORY);
        file_text_write_string(f, cf_string);
    file_text_close(f);
}
