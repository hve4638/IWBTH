///@argu xmin
///@argu xmax
var xmin, xmax, o;
xmin = argument[0];
xmax = argument[1];

with(sys_camera)
{
	o = view_w * originw;

	xview_min = xmin + o;
	xview_max = xmax - o;
}