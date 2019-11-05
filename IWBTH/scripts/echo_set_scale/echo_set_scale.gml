///@param alpha*
if argument_count == 0
	scale_variety = false;
else
{
	scale_variety = true;
	ds_list_clear(list_scale);
	for(var i = 0; i < argument_count; i++)
		ds_list_add(list_scale, argument[i]);
}

return 0;