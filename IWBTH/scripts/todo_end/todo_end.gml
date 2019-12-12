///@argu id
var list, pos, loop;
var map = argument[0];

list = map[? TodoMap.list];
pos = map[? TodoMap.pos];
loop = map[? TodoMap.loop];

return (pos >= ds_list_size(list) && !loop);