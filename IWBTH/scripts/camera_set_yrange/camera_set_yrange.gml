///@argu xmin
///@argu xmax
var ymin, ymax, o;
ymin = argument[0];
ymax = argument[1];

with(sys_camera)
{
	o = view_h * originw;

	yview_min = ymin + o;
	yview_max = ymax - o;
}