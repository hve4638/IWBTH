///@param x
///@param y
///@param alpha*
var _x, _y, a, h, v;
_x = argument[0];
_y = argument[1];
a = argument_count > 2 ? argument[2] : 1.0;
h = draw_get_halign();
v = draw_get_valign();

var i;
var size = ds_list_size(tscr_type);
var width = 0;
	
draw_set_reset();
draw_set_font(font_perpetua);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var idxspr_key = spr_scriptkey;
var keywidth = sprite_get_width(idxspr_key);

for(i = 0; i < size; i++)
{
	var type = tscr_type[| i];
	var val = tscr_value[| i]; 
	
	if type == Script.text
		width += string_width(val);
	else if type == Script.key
		width += string_width(" ") + keywidth;
}


var dw, dh;
dw = x - width div 2;
dh = y;

for(i = 0; i < size; i++)
{
	var type = tscr_type[| i];
	var val = tscr_value[| i]; 
	
	if type == Script.text
	{
		draw_text_color(dw, dh, val, c_white, c_white, c_white, c_white, a);
		dw += string_width(val);
	}
	else if type == Script.key
	{
		var tw = string_width(" ") + keywidth;
		dw += tw / 2;
		draw_sprite_ext(idxspr_key, 0, dw, dh, 1, 1, 0, c_white, a);

		draw_set_halign(fa_center);
		var str, w, scale;
		str = key_get_name(key[val]);
		w = string_width(str);
		scale = min(40 / w, 0.8);
		draw_text_transformed_color(dw, dh + 1, str, scale, scale, 0, c_white, c_white, c_white, c_white, a);
		//draw_text_transformed(x + dw_x, y + 1, str, scale, scale, 0);

		draw_set_halign(fa_left);
		
		dw += tw / 2;	
	}
}	
draw_set_reset();