/*///@param num*
var num, sv, len;
num = argument_count > 0 ? argument[0] : save_idx;

sv = get_save_index(num);
len = array_size(global.savemeta);

for(var i = 0; i < len; i++)
{
	var meta = global.savemeta[i];
	var ns = global.savemeta_necessary[i];
	var df = global.savemeta_default[i];

	if !ds_map_exists(sv, meta) || (typeof(sv[? meta]) != typeof(df))
	{
		if ns
		{
			cout("savedata(", string(num), "): \"", meta, "\" not found... important data loss");
			return false;
		}
		else
		{
<<<<<<< HEAD
			sv[? meta] = df;
			
			cout("savedata(", string(num), "): \"", meta, "\" not found... Replace default data");
=======
			cout("savedata(", string(num), "): \"", global.savemeta[i], "\" not found... Replace default data");
			sv[? global.savemeta[i]] = global.savemeta_default[i];
>>>>>>> parent of 2bd79c6... 세이브
			continue;
		}
	}
}

return true;