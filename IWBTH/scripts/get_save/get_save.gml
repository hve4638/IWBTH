///@param num
var idx = argument_count > 0 ? argument[0] : save_idx;

if !ds_exists(savedata[idx], ds_type_map)
	savedata[idx] = ds_map_create();

return savedata[idx];