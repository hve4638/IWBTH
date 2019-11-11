///@param val
///@param mod
var v, m;
v = argument[0];
m = argument[1];
v = v mod m;

if v < 0
	v += m;

return v;