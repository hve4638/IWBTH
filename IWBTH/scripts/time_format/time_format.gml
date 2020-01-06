///@argu time
var t, s, m, h;
var str;
t = argument[0];
h = string((t div 60) div 60);
m = string((t div 60) mod 60);
s = string(t mod 60);

if string_length(m) == 1
	m = "0" + m;
if string_length(s) == 1
	s = "0" + s;

if h == "0"
	str = strmerge(m, ":", s, "");
else
	str = strmerge(h, ":", m, ":", s, "");

return str;