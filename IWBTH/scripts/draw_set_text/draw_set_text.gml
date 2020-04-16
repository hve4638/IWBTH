///@argu font
///@argu color
///@argu halign
///@argu valign
switch(argument_count)
{
	case 4:
		draw_set_valign(argument[3]);
	case 3:
		draw_set_halign(argument[2]);
	case 2:
		draw_set_color(argument[1]);
	case 1:
		draw_set_font(argument[0]);
}