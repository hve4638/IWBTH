///@param record
var record = argument[0];
var type = record[? Record.type];

if type == RecordType.list
{
	ds_list_destroy(record[? Record.state]);
	ds_list_destroy(record[? Record.x]);
	ds_list_destroy(record[? Record.y]);
	ds_list_destroy(record[? Record.rm]);
	ds_list_destroy(record[? Record.sprite]);
	ds_list_destroy(record[? Record.subimg]);
	ds_list_destroy(record[? Record.xscale]);
	ds_list_destroy(record[? Record.yscale]);
	ds_list_destroy(record[? Record.rot]);
	ds_list_destroy(record[? Record.col]);
	ds_list_destroy(record[? Record.alpha]);
}
else if type == RecordType.queue
{
	ds_queue_destroy(record[? Record.state]);
	ds_queue_destroy(record[? Record.x]);
	ds_queue_destroy(record[? Record.y]);
	ds_queue_destroy(record[? Record.rm]);
	ds_queue_destroy(record[? Record.sprite]);
	ds_queue_destroy(record[? Record.subimg]);
	ds_queue_destroy(record[? Record.xscale]);
	ds_queue_destroy(record[? Record.yscale]);
	ds_queue_destroy(record[? Record.rot]);
	ds_queue_destroy(record[? Record.col]);
	ds_queue_destroy(record[? Record.alpha]);
}

ds_map_destroy(record);