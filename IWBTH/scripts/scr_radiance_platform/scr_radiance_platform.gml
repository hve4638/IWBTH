///@desc scr_radiance_platform
///@argu ind
var idx = argument[0];
var xx = x;
var yy = y;

with(obj_radiance)
{
	platformpos_x[idx] = xx;
	platformpos_y[idx] = yy;
}
instance_destroy();