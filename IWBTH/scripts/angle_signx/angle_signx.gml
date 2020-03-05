///@argu angle
var a = modulo(argument[0], 360);

if a == 90 || a == 270
	return 0;

if a < 90 || a > 270
	return 1;
else
	return -1;