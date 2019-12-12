///@argu id
///@argu spr*
///@argu subimg*
///@argu imgspd*
var spr, img, spd;
spr = argument_count > 0 ? argument[0] : sprite_index;
img = argument_count > 1 ? argument[1] : 0;
spd = argument_count > 2 ? argument[2] : 1;

todo_add(global.todoedit, Todo.spr, spr, img, spd);