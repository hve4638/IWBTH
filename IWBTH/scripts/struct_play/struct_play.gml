///@argu ind
///@argu speed*
///@argu lock*
var ind = argument[0];

var idx = 0;
var size = array_size(struct_run)
for(; idx < size; idx++)
	if !struct_run[idx]
		break;

if idx == size
	return -1;


var lk = argument_count > 2 ? argument[2] : no;

struct_list[idx] = ind;
struct_idx[idx] = 0;
struct_run[idx] = true;
struct_lock[idx] = lk;
struct_speed[idx] = argument_count > 1 ? argument[1] : 1;
