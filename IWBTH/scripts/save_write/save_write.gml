with(sys_global)
{
	if !ds_exists(savedata[save_idx], ds_type_map)
		exit;

	var n = SAVE_DIRECTORY + string(save_idx);
	
    if file_exists(n)
		file_delete(n);

	var sv_string;
	sv_string = ds_map_write(savedata[save_idx]);
	
    var f;
    f = file_text_open_write(n);
        file_text_write_string(f, sv_string);
    file_text_close(f);
}
