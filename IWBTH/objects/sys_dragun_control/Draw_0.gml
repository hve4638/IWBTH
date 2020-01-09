var str = strmerge("gridint: ", gridint);
str += strmerge("main: ",mainx,",",mainy);

if 0 <= num
{
	var ins = arr[num];

	with(ins)
	{
		draw_set_color(c_green);
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	
	str += strmerge("pos: ",ins.setx,",",ins.sety);
}

draw_text(x, y, str);