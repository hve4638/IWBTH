camera_x1 = x - view_w;
camera_x2 = y + view_w;
camera_y1 = x - view_h;
camera_y2 = y + view_h;

if fade_idx > 0
{
	fade_alpha = value_merge(fade_alpha_p, fade_alpha_to, 1 - fade_idx/fade_time);
	
	fade_idx = max(fade_idx - 1, 0);
}
else
{
	fade_alpha = fade_alpha_to;

	fade_idx = no;
}

time_idx++;