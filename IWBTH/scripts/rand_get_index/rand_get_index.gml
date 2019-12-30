///@argu value
var val;
val = argument[0];

for(var i = 0; i < rand_size; i++)
{
	if rand_idx[| i] == val
		return i;
}

return -1;