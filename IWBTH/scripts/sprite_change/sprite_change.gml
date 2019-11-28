///@argu spr
///@argu img
///@argu spd
var spr, img, spd;
spr = argument_count > 0 ? argument[0] : sprite_index;
img = argument_count > 1 ? argument[1] : 0;
spd = argument_count > 2 ? argument[2] : 1;

sprite_index = spr;
image_index = img;
image_speed = spd;