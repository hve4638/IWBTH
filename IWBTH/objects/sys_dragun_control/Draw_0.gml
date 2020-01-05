draw_text(x, y, strmerge("gridint: ", gridint));


if 0 <= num
	with(arr[num])
	{
		draw_set_color(c_green);
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}

draw_button(0, 0, 32, 32, 1);
draw_button(0, 64, 32, 64 + 32, 0);
draw_set_reset();