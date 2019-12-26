///@param string*
var str = "";
for(var i = 0; i < argument_count; i++)
{
	if is_real(argument[i])
		str += string(argument[i]);
	else
		str += string(argument[i]) + " ";
}

if DEFAULT_COUTSHOW
	show_message(str);
else
	show_debug_message(str);