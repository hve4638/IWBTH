onplayer = place_meeting(x, y, obj_player);

if onplayer && enable
{
	if button_press(Input.up)
	{
		enable = false;
		scr_radiance_start();
	}
	show_alpha += 0.1;
}
else 
	show_alpha -= 0.1;

show_alpha = clamp(show_alpha, 0.0, 1.0);