///@param string*
var str = string(argument[0]), ptype = typeof(argument[0]);

for(var i = 1; i < argument_count; i++)
{
	if ptype != typeof(argument[i])
		str += string(argument[i]);
	else
		str += " " + string(argument[i]);

	ptype = typeof(argument[i])
}

if DEFAULT_COUTSHOW
	show_message(str);
else
	show_debug_message(str);