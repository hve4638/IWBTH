///@argu right_or_left
var t = argument[0];

var ins;
var xx, yy;
xx = t ? room_width div 4 * 3 : room_width div 4;
yy = room_height div 2;

ins = jsab_block(xx, yy, 45, 30);
ins.thick = 3;
ins.length = 3;

alarm_trigger(45, scr_jsabtl_c5, [xx, yy], false);

return ins;