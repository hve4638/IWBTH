///@argu value
var idx = argument[0];
var r, g, b;

r = color_get_red(idx);
g = color_get_green(idx);
b = color_get_blue(idx);

return [r, g, b];