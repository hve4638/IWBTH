var c, a, b;
select += button_press(Input.right) - button_press(Input.left);

if enable_ascension
{
	c = 0; a = 1; b = 2;
	select = clamp(select, 0, 2);
}
else
{
	c = 0; b = 1; a = -1;
	select = clamp(select, 0, 1);
}

if button_press(Input.jump)
{
	if select == c
	{
		enable_keyinput(false);
		alarm_trigger(100, enable_keyinput, true, true);

		room_goto_alarm(goto, 100);
		save_room(goto);
		
		global_fade_set(1.0, 75, c_white);
		
		sv_hubx = obj_player.x;
		sv_huby = obj_player.y;
		
		with(obj_hubportal)
			enable = false;

		instance_destroy();
	}
	else if select == a
	{
		instance_destroy();
	}
	else if select == b
	{
		instance_destroy();
	}
}

if button_press(Input.attack)
{
	instance_destroy();
}