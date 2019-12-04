///@argu id
///@argu spr*
///@argu subimg*
///@argu imgspd*
var spr, img, spd;
var arr, list;
arr = argument[0];
list = arr[@ 0];

spr = argument_count > 1 ? argument[1] : sprite_index;
img = argument_count > 2 ? argument[2] : 0;
spd = argument_count > 3 ? argument[3] : 1;


ds_list_add(list, Todo.spr, spr, img, spd);