draw_set_text(font_perpetua, c_black, 1, 1);
var str = key_get_name(key[key_index]);
var w = string_width(str);
var scale = min((64 - 8) / w, 1.0);
if !onact
	draw_text_transformed(x + dw_x, y + 1, str, scale, scale, 0);

draw_set_halign(fa_left);

if !onact
	str = name;
else
	str = "PRESS NEW KEY";

draw_sprite(spr_customkey, 0, x + dw_x - 1, y)
draw_text(x - dw_x, y, str);
draw_text(x - dw_x - 1, y, str);

draw_set_reset();