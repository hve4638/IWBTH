///@argu sprite
///@argu count*
var spr, spd, type, res, size;
var cnt;
spr = argument[0];
cnt = argument_count > 1 ? argument[1] : no;
spd = sprite_get_speed(spr);
size = sprite_get_number(spr);
type = sprite_get_speed_type(spr);
res = 0;

if type == spritespeed_framespergameframe
	res = 1 / spd;
else if type == spritespeed_framespersecond
	res = room_speed / spd;

if isno(cnt)
	cnt = sprite_get_number(spr);

return res * cnt;