draw_text(x, y, strmerge("gridint: ", gridint));

with(arr[num])
{
	draw_set_color(c_green);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
}

draw_set_reset();

