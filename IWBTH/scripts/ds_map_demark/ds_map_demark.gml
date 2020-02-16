///@desc clear map but not child ds
///@argu ds_map
var map = argument[0];
var arr = map_show(map);
var size = array_size(arr);

for(var i = 0; i < size; i++)
{
	ds_map_delete(map, arr[i]);
}