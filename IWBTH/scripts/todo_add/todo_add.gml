///@argu map
///@argu idx
var map = argument[0];
var list = map[? TodoMap.list];

for(var i = 1; i < argument_count; i++)
	ds_list_add(list, argument[i]);