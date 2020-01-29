///@argu value
var idx = argument[0];
var r, g, b;

b = idx div (256 * 256);
g = (idx div 256) mod 256;
r = idx mod 256;

return [r, g, b];