///@argu ds_list
var list = argument[0];
var size = ds_list_size(list);
for(var i = size - 1; i >= 0; i--)
	ds_list_delete(list, i);

return 0;