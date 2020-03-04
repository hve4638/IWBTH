///@argu bin
var arr = argument[0];
var size = array_size(arr);
var dec = 0, b;

b = 1;
for(var i = 0; i < size; i++)
{
	if arr[i]
		dec += b;

	b *= 2;
}

return dec;