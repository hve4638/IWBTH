///@argu string
var str = string(argument[0]);

if string_length(str) <= global.strpreview_cnt
	return str;
else
	return (string_copy(str, 1, global.strpreview_cnt) + "...");