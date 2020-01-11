///@argu string
var map = json_decode(argument[0]);
var list = map[? "default"];

ds_map_demark(map);
ds_map_destroy(map);

return list;