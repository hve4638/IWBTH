if !ds_exists(savedata[save_idx], ds_type_map)
	savedata[save_idx] = ds_map_create();

return savedata[save_idx];