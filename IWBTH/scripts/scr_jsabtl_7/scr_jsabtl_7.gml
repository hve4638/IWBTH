var idx = argument[0];

if idx mod 40 != 0
	return 0;

var xx = irandom_range(64, room_width div 2 - 256);
var yy = irandom_range(256, room_height div 2 - 96);

var n = (idx div 40) mod 4;
switch(n)
{
	case 1:
		xx = room_width - xx;
		yy = room_height - yy;
	break;

	case 2:
		yy = room_height - yy;
	break;
	
	case 3:
		xx = room_width - xx;
	break;
}

scr_jsabtl_c2(xx, yy, 40);
	
return 0;