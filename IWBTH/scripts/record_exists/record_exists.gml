///@param record
var record = argument[0];

if !ds_exists(record, ds_type_map)
	return false;

if !ds_map_exists(record, Record.type)
	return false;

return true;