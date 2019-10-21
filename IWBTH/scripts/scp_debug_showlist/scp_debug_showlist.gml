/// @description scp_debug_listdecode(str)
/// @param str
var debug_t=ds_list_create();
var debug_str="";

ds_list_read(debug_t,argument[0]);
//show_message("string: "+string(argument[0]));
for(var i=0;i<ds_list_size(debug_t);i++) {
    debug_str+=string(ds_list_find_value(debug_t,i))+" ";
}
//show_message(argument[0]);
show_message("val: "+string(debug_str));
ds_list_destroy(debug_t);
return 0;
