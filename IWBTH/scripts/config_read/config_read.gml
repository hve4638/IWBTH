with(sys_global)
{
    if !file_exists(CONFIG_DIRECTORY)
		return false;

    var f;
	var cf_string, tmp;
    f=file_text_open_write(CONFIG_DIRECTORY);
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
	config_bgm = tmp[? "bgm"];
	config_sfx = tmp[? "sfx"];
	config_ui = tmp[? "ui"];

	ds_map_destroy(tmp);
	
	return true;
}
