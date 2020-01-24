onplayer = place_meeting(x, y, obj_player);

if onplayer
{
	if button_press(Input.up)
	{
		enable_keyinput(false);
		alarm_trigger(100, enable_keyinput, true, true);

		room_goto_alarm(goto, 100);
		save_room(goto);
		
		global_fade_set(1.0, 75, c_white);
		
		sv_hubx = obj_player.x;
		sv_huby = obj_player.y;
	}
	show_alpha += 0.05;
}
else
	show_alpha -= 0.05;


show_alpha = clamp(show_alpha, 0, 1.0);