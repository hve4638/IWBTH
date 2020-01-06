///@param num*
var num, sv, len;
num = argument_count > 0 ? argument[0] : save_idx;

sv = get_save_index(num);
len = array_length_1d(global.savemeta);

//cout_show(save_idx, map_show(sv));
for(var i = 0; i < len; i++)
{
	if !ds_map_exists(sv,global.savemeta[i])
		cout("savedata(", string(num), "): \"", global.savemeta[i], "\" not found");

	if !ds_map_exists(sv,global.savemeta[i])
		return false;
}

return true;