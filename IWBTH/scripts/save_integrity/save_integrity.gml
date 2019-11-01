///@param num*
var num, sv, len;
num = argument_count > 0 ? argument[0] : save_idx;

sv = get_save(num);
len = array_length_1d(global.savemeta);

for(var i = 0; i < len; i++)
	if !ds_map_exists(sv,global.savemeta[i])
		return false;

return true;