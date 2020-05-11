camera_x1 = x - view_w * originw;
camera_x2 = x + view_w * (1 - originw);
camera_y1 = y - view_h * originh;
camera_y2 = y + view_h * (1 - originh);

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