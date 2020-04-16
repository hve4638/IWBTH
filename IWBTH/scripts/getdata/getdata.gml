///@argu key
///@argu default*
var k, d;
k = argument[0];
d = argument_count > 1 ? argument[1] : undefined;

if ds_map_exists(global.datainput, k)
	return global.datainput[? k];
else
	return d;