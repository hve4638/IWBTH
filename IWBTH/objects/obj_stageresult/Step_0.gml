if show_clear
{
	if clear_idx == 0
	{
		clear_alpha2 = min(1.0, clear_alpha2 + 0.1);
		
		if clear_alpha2 == 1.0
		{
			clear_idx = 1;
			clear_alpha = 1.0;
		}
	}
	else if clear_idx == 1
		clear_alpha2 = max(0, clear_alpha2 - 0.02);
}
else
{
	clear_alpha = max(0, clear_alpha - 0.015);
	clear_alpha2 = max(0, clear_alpha2 - 0.015);
}

if enable_back && keyboard_check_pressed(vk_anykey)
{
	enable_back = false;
	timeline(tl_backhub);
}

if show_sub
	sub_alpha = min(1.0, sub_alpha + 0.007);
else
	sub_alpha = max(0, sub_alpha - 0.015);