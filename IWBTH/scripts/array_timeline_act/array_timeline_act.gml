///@argu num
///@argu bool*
///@argu index*
var num = argument[0];
var b = argument_count > 1 ? argument[1] : true;
var idx = argument_count > 2 ? argument[2] : 0;

tl_on[num] = b;
tl_idx[num] = idx;