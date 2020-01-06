///@argu ds_map
var map = argument[0];
var arr, idx = 0;

if !is_real(map)
{
	cout_show(map, "is not index!");
	return 0;
}

if !ds_exists(map, ds_type_map)
{
	cout_show(map, "is not ds_map!");
	return 0;
}

var k = ds_map_find_first(map);

while(true)
{
	arr[idx++] = k;
	
	if k == ds_map_find_last(map)
		break;
	else
		k = ds_map_find_next(map, k);
}

return arr;