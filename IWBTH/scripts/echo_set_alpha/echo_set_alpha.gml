///@param alpha*
if argument_count == 0
	alpha_variety = false;
else
{
	alpha_variety = true;
	ds_list_clear(list_alpha);
	for(var i = 0; i < argument_count; i++)
		ds_list_add(list_alpha, argument[i]);
}

return 0;