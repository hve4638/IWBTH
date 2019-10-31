///@desc New Event
var str = "";

str += string(x) + "," + string(y) + "\n";
str += "vspd: " + string(vspd) + "\n";
str += "hspd: " + string(hspd) + "\n";
str += "onground: " + string(onground) + "\n";
str += "dashdelay: " + string(max(dashdelay,0)) + "\n";


draw_text(0,0,str);