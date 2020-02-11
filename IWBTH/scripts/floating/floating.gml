///@desc return 0~1
///@argu ind
///@argu cycle
var ind, cycle, r;
var i;
ind = argument[0];
cycle = argument_count > 1 ? argument[1] : 50;

i = (ind) * 360 / cycle;
r = dcos(i) * 0.5 + 0.5;

return r;