/// @description es(section,key);
/// @param section
/// @param key
var str;
with(sys_global) str=string(txt[? argument0+"."+argument1]);
while 0<string_count("&?",str) {
    str=string_replace(str,"&?",string(irandom_range(0,9)));
}
return str;
