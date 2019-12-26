///@argu id
var map = argument[0];

ds_list_destroy(map[? TodoMap.list]);
ds_queue_destroy(map[? TodoMap.value]);
ds_queue_destroy(map[? TodoMap.signal]);
ds_map_destroy(map);