var idx = argument[0];

if idx mod 40 != 0
	return 0;
	
var t = (idx div 40) mod 2;

var ins;
var xx, yy;
xx = t ? room_width div 4 * 3 : room_width div 4;
yy = room_height div 2;

ins = jsab_block(xx, yy, 40, 25);
ins.thick = 3;
ins.length = 3;

alarm_trigger(40, scr_jsabtl_c5, [xx, yy], false);

return ins;