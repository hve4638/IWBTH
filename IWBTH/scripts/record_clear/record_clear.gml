///@param record
var record = argument[0];
var type = record[? Record.type];

record[? Record.target] = noone;
record[? Record.index] = 0;

if type == RecordType.list
{
	ds_list_clear(record[? Record.state]);
	ds_list_clear(record[? Record.x]);
	ds_list_clear(record[? Record.y]);
	ds_list_clear(record[? Record.rm]);
	ds_list_clear(record[? Record.sprite]);
	ds_list_clear(record[? Record.subimg]);
	ds_list_clear(record[? Record.xscale]);
	ds_list_clear(record[? Record.yscale]);
	ds_list_clear(record[? Record.rot]);
	ds_list_clear(record[? Record.col]);
	ds_list_clear(record[? Record.alpha]);
}
else if type == RecordType.queue
{
	ds_queue_clear(record[? Record.state]);
	ds_queue_clear(record[? Record.x]);
	ds_queue_clear(record[? Record.y]);
	ds_queue_clear(record[? Record.rm]);
	ds_queue_clear(record[? Record.sprite]);
	ds_queue_clear(record[? Record.subimg]);
	ds_queue_clear(record[? Record.xscale]);
	ds_queue_clear(record[? Record.yscale]);
	ds_queue_clear(record[? Record.rot]);
	ds_queue_clear(record[? Record.col]);
	ds_queue_clear(record[? Record.alpha]);
}