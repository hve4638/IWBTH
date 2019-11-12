///@param record
var record = argument[0];
var type = record[? Record.type];
var map = ds_map_create();

map[? Record.type] = record[? Record.type];
map[? Record.target] = record[? Record.target];

if type == RecordType.list
{
	map[? Record.state] = ds_list_write(record[? Record.state]);
	map[? Record.x] = ds_list_write(record[? Record.x]);
	map[? Record.y] = ds_list_write(record[? Record.y]);
	map[? Record.rm] = ds_list_write(record[? Record.rm]);
	map[? Record.sprite] = ds_list_write(record[? Record.sprite]);
	map[? Record.subimg] = ds_list_write(record[? Record.subimg]);
	map[? Record.xscale] = ds_list_write(record[? Record.xscale]);
	map[? Record.yscale] = ds_list_write(record[? Record.yscale]);
	map[? Record.rot] = ds_list_write(record[? Record.rot]);
	map[? Record.col] = ds_list_write(record[? Record.col]);
	map[? Record.alpha] = ds_list_write(record[? Record.alpha]);
}
else if type == RecordType.queue
{
	map[? Record.state] = ds_queue_write(record[? Record.state]);
	map[? Record.x] = ds_queue_write(record[? Record.x]);
	map[? Record.y] = ds_queue_write(record[? Record.y]);
	map[? Record.rm] = ds_queue_write(record[? Record.rm]);
	map[? Record.sprite] = ds_queue_write(record[? Record.sprite]);
	map[? Record.subimg] = ds_queue_write(record[? Record.subimg]);
	map[? Record.xscale] = ds_queue_write(record[? Record.xscale]);
	map[? Record.yscale] = ds_queue_write(record[? Record.yscale]);
	map[? Record.rot] = ds_queue_write(record[? Record.rot]);
	map[? Record.col] = ds_queue_write(record[? Record.col]);
	map[? Record.alpha] = ds_queue_write(record[? Record.alpha]);
}

var str = ds_map_write(map);
ds_map_destroy(map);

return str;


