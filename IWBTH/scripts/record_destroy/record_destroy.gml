///@param record
var record = argument[0];

record[? Record.target] = noone;
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

ds_map_destroy(record);