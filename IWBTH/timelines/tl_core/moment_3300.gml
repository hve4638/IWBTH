///@desc boom2
var xx, yy;
var xx = irandom_range(256, room_width div 2 - 96);
var yy = irandom_range(256, room_height div 2 - 128);

var ins = scr_jsabtl_c2(room_width - xx, yy, 40);
ins.boomcnt = 24;