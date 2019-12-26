///@argu id
///@argu reset*
var map = argument[0];
var reset = argument_count > 1 ? argument[1] : true;

global.todolist[? id] = map;

if reset
{
	todo_set_position(map, 0);
	map[? TodoMap.delay] = 0;
	ds_queue_clear(map[? TodoMap.signal]);
	ds_queue_clear(map[? TodoMap.value]);
}