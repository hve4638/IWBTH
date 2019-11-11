///@param x
///@param y
var px, py;
px = argument_count > 0 ? argument[0] : no;
py = argument_count > 1 ? argument[1] : no;

if argument_count > 0
{
	is_absx = true;
	r_absx = px;
}
else
	is_absx = false;

if argument_count > 1
{
	is_absy = true;
	r_absy = px;
}
else
	is_absy = false;