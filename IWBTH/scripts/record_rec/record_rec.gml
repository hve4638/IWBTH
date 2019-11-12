///@param record
var record = argument[0];
var type = record[? Record.type];

if type == RecordType.list
	record_rec_list(record);
else if type == RecordType.queue
	record_rec_queue(record);