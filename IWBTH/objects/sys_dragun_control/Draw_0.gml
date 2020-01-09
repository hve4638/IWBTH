var str = strmerge("gridint: ", gridint);
str += strmerge("main: ",mainx,",",mainy);

if 0 <= num
{
	var ins = arr[num];

	with(ins)
	{
		draw_set_color(c_green);
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
		
		draw_line(x - 4, y, x + 4, y);
		draw_line(x, y - 4, x, y + 4);
	}
	
	draw_set_color(c_black);
	str += strmerge("pos: ",ins.setx,",",ins.sety);
}

draw_text(x, y, str);
draw_set_reset();