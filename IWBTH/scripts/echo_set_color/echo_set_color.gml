///@param alpha*
if argument_count == 0
	color_variety = false;
else
{
	color_variety = true;
	ds_list_clear(list_color);
	for(var i = 0; i < argument_count; i++)
		ds_list_add(list_color, argument[i]);
}

return 0;