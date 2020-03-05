if todo_is_playing()
{
	scr_headhunter_todo();
}

if onfocus
{
	var d, a;
	d = point_direction(x, y-7, Player.x, Player.y);
	a = angle_difference(focus_dir, d);

	if a < 8
		focus_dir = d;
	else
	{
		if angle_difference(focus_dir + 8, d) < a
			focus_dir += 8;
		else
			focus_dir -= 8;
	}
}