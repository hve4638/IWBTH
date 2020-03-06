var xs, ys;
var spr = sprite_index;

xs = abs(image_xscale * sprite_get_width(spr));
ys = abs(image_yscale * sprite_get_height(spr));

return [xs, ys];