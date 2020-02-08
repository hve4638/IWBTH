draw_set_reset();

if 0 < white_time 
{
	var p = clamp((time_idx - white_start) / white_time, 0, 1);
	var c = merge_color(c_white, c_jsab, p);

	gpu_set_fog(1, c, 0, 0);
}

draw_self_correction();

gpu_set_fog(0, 0, 0, 0);

//cout("!: ", image_xscale, image_yscale);