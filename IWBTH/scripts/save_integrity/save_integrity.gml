///@param num*
var num, sv, len;
num = argument_count > 0 ? argument[0] : save_idx;

sv = get_save_index(num);
len = array_size(global.savemeta);

for(var i = 0; i < len; i++)
{
	var meta = global.savemeta[i];
	var ne = global.savemeta_necessary[i];
	var df = global.savemeta_default[i];

	if !ds_map_exists(sv, meta)
	{
		if ne
		{
			cout("savedata(", string(num), "): \"", meta, "\" not found... important data loss");
			return false;
		}
		else
		{
			sv[? meta] = global.savedata_default[df];
			
			cout("savedata(", string(num), "): \"", meta, "\" not found... Replace default data");
			continue;
		}
	}
}


return true;