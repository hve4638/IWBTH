///@argu stage
///@argu isasended
var st, asc;
var arr;
st = argument[0];
asc = argument[1];
arr = dectobin(stage_clear[st]);

if asc
	arr[1] = true;
else
	arr[0] = true;

stage_clear[st] = bintodec(arr);

return 0;