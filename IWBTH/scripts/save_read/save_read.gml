///@param num*
var num;
num = argument_count > 0 ? argument[0] : save_idx;

with(sys_global)
{
	var f, n;
	var sv_string;
	n = SAVE_DIRECTORY + string(num);
	
    if !file_exists(n)
		exit;

    f = file_text_open_write(n);
		sv_string = file_text_read_string(f);
    file_text_close(f);


	if !ds_exists(savedata[num], ds_type_map)
		savedata[num] = ds_map_create();

	ds_map_clear(savedata[num]);
	ds_map_read(savedata[num], sv_string);
}
