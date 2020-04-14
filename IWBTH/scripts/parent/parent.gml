///@argu object
var obj = argument[0];
var par = object_get_parent(obj);

return !isno(par) ? par : obj;