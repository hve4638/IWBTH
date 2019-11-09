///@param type
///@param value
///@param add*
var type, val;
type = argument[0];
val = argument[1];

ds_list_add(tscr_type, type);
ds_list_add(tscr_value, val);

var i;
for(i = 0; i+2 < argument_count; i++)
	ds_list_add(tscr_add[i], argument[i+2]);

for(; i < 5; i++)
	ds_list_add(tscr_add[i], no);