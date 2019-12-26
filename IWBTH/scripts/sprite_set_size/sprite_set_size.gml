///@argu width
///@argu height
var w, h;
var xs, ys;
var spr = sprite_index;
w = argument[0];
h = argument[1];
xs = sign(image_xscale);
ys = sign(image_yscale);

image_xscale = w / sprite_get_width(spr);
image_yscale = h / sprite_get_height(spr);

image_xscale *= xs;
image_yscale *= ys;