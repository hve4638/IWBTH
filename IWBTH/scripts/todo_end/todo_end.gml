///@argu id
var arr = argument[0];
var list = arr[@ 0];
var pos = arr[@ 1];
var loop = arr[@ 3];

return (pos >= ds_list_size(list) && !loop);