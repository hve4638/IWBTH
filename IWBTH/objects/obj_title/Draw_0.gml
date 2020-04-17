draw_set_font(font_perpetua_title);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(main_x, main_y, name);
draw_text(main_x + 1, main_y, name);
draw_text(main_x - 1, main_y, name);
draw_set_reset();


if status = Title.main
{
	draw_set_color(c_black);
	draw_set_valign(fa_bottom);
	draw_text(0, room_height, VERSION_SHOW);

	draw_set_reset();
}

var lore = "";
switch(status)
{
	case Title.game:
		lore += "Save Reset : "
		lore += check_keyboard ? "Delete Key\n" : "Right Mouse\n";
	break;

	case Title.main:
		lore += "Select : Arrow Key\n"
		lore += "Confirm : Enter Key\n"
	break;
}

draw_set_color(c_black);
draw_set_halign(2);
draw_text(room_width - 4, 0, lore);
draw_set_reset();