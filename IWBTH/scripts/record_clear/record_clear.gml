///@param record
var record = argument[0];

record[? Record.target] = noone;
record[? Record.index] = 0;
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
