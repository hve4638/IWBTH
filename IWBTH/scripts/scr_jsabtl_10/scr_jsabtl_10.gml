var idx = argument[0];

if idx mod 20 != 0
	return 0;

var xx = irandom_range(180, room_width div 2 - 48);
var yy = irandom_range(64, room_height div 2 - 48);

var n = (idx div 20) mod 2;

if n == 1
	xx = room_width - xx;

var ins = scr_jsabtl_c2(xx, yy, 20);
ins.boomcnt = 24;
	
return 0;