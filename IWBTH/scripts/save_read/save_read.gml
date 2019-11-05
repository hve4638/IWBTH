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

    f = file_text_open_read(n);
		sv_string = file_text_read_string(f);
    file_text_close(f);

	var sv = get_save_index(num);

	ds_map_clear(sv);
	ds_map_read(sv, sv_string);
}
