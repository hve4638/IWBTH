if 0 < blur_alpha
	draw_edgeblur(blur_alpha);

draw_set_color(fade_col);
draw_set_alpha(fade_alpha);
draw_rectangle(0,0,win_w,win_h,false);

draw_set_reset();