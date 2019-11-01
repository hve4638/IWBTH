draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(font_perpetua);
draw_sprite(spr_customkey, 0, x + dw_x, y)

var str = key_get_name(arr[@ idx]);
var w = string_width(str);
var scale = min((64 - 8) / w, 1);
if !onact
	draw_text_transformed(x + dw_x, y + 1, str, scale, scale, 0);

draw_set_halign(fa_left);

var str;

if !onact
	str = name;
else
	str = "PRESS NEW KEY";
draw_text(x - dw_x, y, str);
draw_text(x - dw_x + 1, y, str);


draw_set_reset();