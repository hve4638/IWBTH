var idx = argument[0];

var d = 20;

if idx mod d != 0
	return 0;

var f = bool(idx mod (d*2));
var h, xx, spd = floor(32 * 0.75) + 2;
xx = f ? 0 : room_width;
h = f ? spd : -spd;

with(instance_create_layer(xx, irandom(room_height), L_PLAYER, obj_jsabblock_move))
{
	hspd = h;
	length = 0.75;
	thick = 0.75;
	move_delay = 4;
}

return 0;