draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(font_perpetua);

var str = name;
switch(type)
{
	case Select.toggle:
		str += ": ";
		str += toggle ? "ON" : "OFF";
	break;
	
	case Select.scroll:
	{
		str += ": " + string(percent) + "%";
		
		break;	
	}
	
	case Select.list:
		str += ": ";
	
		if 0 <= list_idx
			str += + string(list[| list_idx]);
	break;


	case Select.game:
		str += " " + string(save_num);
	break;
}

var w;
check_w = string_width(str) + 20;
w = check_w div 2;

draw_text(dw_x-1, dw_y, str);
draw_text(dw_x, dw_y, str);
draw_text(dw_x+1, dw_y, str);

if onmouse || onact
{
	draw_sprite_ext(spr_select, 0, dw_x + w, dw_y - 4, 0.5, 0.5, 0, c_white, 1.0);
	draw_sprite_ext(spr_select, 0, dw_x - w, dw_y - 4, -0.5, 0.5, 0, c_white, 1.0);
	
	if type == Select.game
	{
		draw_set_reset();
		draw_set_color(c_black);
		draw_set_font(font_perpetua);

		if !save_new
		{
			draw_text(700, 300, "TIME: " + string(save_time));
			draw_text(700, 300, "\nDEATH: " + string(save_death));
		}
	}
}

draw_set_reset();