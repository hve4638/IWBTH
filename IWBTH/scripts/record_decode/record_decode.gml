///@param string
var str = argument[0];
var map = ds_map_create();
var record, type;
ds_map_read(map, str);
type = map[? Record.type];


if type == RecordType.list
{
	record = record_create();
	record[? Record.type] = map[? Record.type];
	record[? Record.target] = map[? Record.target];
	
	ds_list_read(record[? Record.state], map[? Record.state]);
	ds_list_read(record[? Record.x], map[? Record.x]);
	ds_list_read(record[? Record.y], map[? Record.y]);
	ds_list_read(record[? Record.rm], map[? Record.rm]);
	ds_list_read(record[? Record.sprite], map[? Record.sprite]);
	ds_list_read(record[? Record.subimg], map[? Record.subimg]);
	ds_list_read(record[? Record.xscale], map[? Record.xscale]);
	ds_list_read(record[? Record.yscale], map[? Record.yscale]);
	ds_list_read(record[? Record.rot], map[? Record.rot]);
	ds_list_read(record[? Record.col], map[? Record.col]);
	ds_list_read(record[? Record.alpha], map[? Record.alpha]);
}
else if type == RecordType.queue
{
	record = record_create_light();
	record[? Record.type] = map[? Record.type];
	record[? Record.target] = map[? Record.target];

	ds_queue_read(record[? Record.state], map[? Record.state]);
	ds_queue_read(record[? Record.x], map[? Record.x]);
	ds_queue_read(record[? Record.y], map[? Record.y]);
	ds_queue_read(record[? Record.rm], map[? Record.rm]);
	ds_queue_read(record[? Record.sprite], map[? Record.sprite]);
	ds_queue_read(record[? Record.subimg], map[? Record.subimg]);
	ds_queue_read(record[? Record.xscale], map[? Record.xscale]);
	ds_queue_read(record[? Record.yscale], map[? Record.yscale]);
	ds_queue_read(record[? Record.rot], map[? Record.rot]);
	ds_queue_read(record[? Record.col], map[? Record.col]);
	ds_queue_read(record[? Record.alpha], map[? Record.alpha]);
}

ds_map_destroy(map);

return record;