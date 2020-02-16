///@desc array_value
///@argu arr
///@argu percent
var arr = argument[0];
var p = clamp(argument[1], 0, 1.0);

if is_array(arr)
{
	var res, size;
	var n, a, b;
	size = array_size(arr) - 1;
	n = p * size;
	
	a = floor(n);
	b = ceil(n);
	res = value_merge(arr[a], arr[b], n - a);
	
	return res;
}

return arr;