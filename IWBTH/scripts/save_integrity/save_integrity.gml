var sv, len;
sv = get_save();
len = array_length_1d(global.savemeta);

for(var i = 0; i < len; i++)
	if !ds_map_exists(sv,global.savemeta[i])
		return false;

return true;