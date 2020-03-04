///@argu string
var str = argument[0];
var len = string_length(str);

if string_pos("[", str) == 1 && string_pos("]", str) == len
{
	var cnt;
	str = string_copy(str, 2, len - 2) + ",";
	cnt = string_count(",", str);
	var arr, pos, t;
	arr = array_create(cnt + 1);
	
	for(var i = 0; i <= cnt; i++)
	{
		pos = string_pos(",", str);

		t = string_copy(str, 1, pos - 1);
		str = string_delete(str, 1, pos);
		
		if string_count("\"", t) > 0
		{
			var p = string_pos("\"", t);
			t = string_delete(t, 1, p);

			var p = string_pos("\"", t);
			t = string_copy(t, 1, p - 1);

			arr[i] = t;
		}
		else
			arr[i] = string_digits(t);
	}

	return arr;
}

return 0;