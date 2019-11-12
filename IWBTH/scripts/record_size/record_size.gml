///@param record
var record = argument[0];
var type = record[? Record.type];

if type == RecordType.list
	return ds_list_size(record[? Record.state]);
if type == RecordType.queue
	return ds_queue_size(record[? Record.state]);
