///@desc sprite
var spr, spd, type, res, size;
spr = argument[0];
spd = sprite_get_speed(spr);
size = sprite_get_number(spr);
type = sprite_get_speed_type(spr);
res = 0;

if type == spritespeed_framespergameframe
	res = 1 / spd;
else if type == spritespeed_framespersecond
	res = room_speed / spd;

return res;

