///@param num*
var num, sv, len;
num = argument_count > 0 ? argument[0] : save_idx;

sv = get_save_index(num);
len = array_size(global.savemeta);

for(var i = 0; i < len; i++)
{
	if !ds_map_exists(sv, global.savemeta[i])
	{
		if global.savemeta_necessary[i]
		{
			cout("savedata(", string(num), "): \"", global.savemeta[i], "\" not found... important data loss");
			return false;
		}
		else
		{
			cout("savedata(", string(num), "): \"", global.savemeta[i], "\" not found... Replace default data");
			sv[? global.savemeta[i]] = global.savemeta_default[i];
			continue;
		}
	}
}

return true;