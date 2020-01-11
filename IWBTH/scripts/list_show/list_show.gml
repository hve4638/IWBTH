///@argu ds_list
var list = argument[0];
var arr;

if !is_real(list)
{
	cout_show(list, "is not index!");
	return 0;
}

if !ds_exists(list, ds_type_list)
{
	cout_show(list, "is not ds_map!");
	return 0;
}

var s = ds_list_size(list);
for(var i = 0; i < s; i++)
{
	arr[i] = list[| i];
}

return arr;