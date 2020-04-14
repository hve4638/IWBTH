///@param num*
var num;
num = argument_count > 0 ? argument[0] : save_idx;

with(sys_global)
{
	if !ds_exists(savedata[num], ds_type_map)
		exit;

	var f, n;
	var sv_string;

	n = SAVE_DIRECTORY + string(num);
	
    if file_exists(n)
		file_delete(n);

	sv_string = ds_map_write(savedata[num]);

    f = file_text_open_write(n);
        file_text_write_string(f, sv_string);
    file_text_close(f);
}
