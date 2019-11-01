///@param name
///@param type
///@param idx
///@param add
var name, type, add, add2, idx;
name = argument_count > 0 ? argument[0] : " ";
type = argument_count > 1 ? argument[1] : Select.nothing;
idx = argument_count > 2 ? argument[2] : TitleArray.nothing;
add = argument_count > 3 ? argument[3] : 0;
add2 = argument_count > 4 ? argument[4] : 0;

ds_list_add(selectname, name);
ds_list_add(selecttype, type);
ds_list_add(selectidx, idx);
ds_list_add(selectadd, add);
ds_list_add(selectadd2, add2);