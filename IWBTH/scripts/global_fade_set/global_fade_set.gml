///@argu toAlpha
///@argu fadetime
///@argu color*

with(sys_global)
{
	var set, time_, col;
	set = argument[0];
	time_ = argument[1];
	col = argument_count > 2 ? argument[2] : fade_color;


	fade_alpha_to = set;
	fade_alpha_p = fade_alpha;
	fade_idx = time_;
	fade_time = time_;
	fade_color = col;
}