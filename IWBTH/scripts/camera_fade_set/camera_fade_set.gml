///@argu toAlpha
///@argu fadetime
///@argu color*

with(sys_camera)
{
	var set, time_, col;
	set = argument[0];
	time_ = argument[1];
	col = argument_count > 2 ? argument[2] : fade_color;

	if time_ == 0
	{
		fade_alpha_to = set;
		fade_alpha_p = set;
		fade_alpha = set;
		fade_color = col;
	}
	else
	{
		fade_alpha_to = set;
		fade_alpha_p = fade_alpha;
		fade_idx = time_;
		fade_time = time_;
		fade_color = col;
	}
}

