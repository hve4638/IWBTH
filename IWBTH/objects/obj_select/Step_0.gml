var w, h;
w = check_w div 2;
h = check_h div 2;

onmouse =  point_in_rectangle(mouse_x, mouse_y, dw_x - w, dw_y - h, dw_x + w, dw_y + h)


if onmouse && mouse_check_button_pressed(mb_left)
{
	;
}