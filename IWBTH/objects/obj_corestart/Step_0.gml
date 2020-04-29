onplayer = place_meeting(x, y, obj_player);

if onplayer && enable
{
	if button_press(Input.up)
	{
		enable = false;
		with(obj_jsab_core)
			timeline(tl_core);
	}
	show_alpha += 0.1;
}
else 
	show_alpha -= 0.1;

show_alpha = clamp(show_alpha, 0.0, 1.0);