///@argu ind
///@argu speed
///@argu lock*
var ind = argument[0];

struct_list = ind;
struct_idx = 0;
struct_run = true;
struct_lock = no;

if argument_count > 1
	struct_speed = argument[1];

if argument_count > 2
	struct_lock = argument[2];