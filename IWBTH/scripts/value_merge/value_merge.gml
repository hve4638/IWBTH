///@argu value1
///@argu value2
///@argu amount
var a, b, p;
var t;
a = real(argument[0]);
b = real(argument[1]);
p = clamp(argument[2],0,1);

if a == b
	return a;

if b < a
{
	t = a;
	a = b;
	b = t;
	
	p = 1 - p;
}

return (b - a) * p + a;