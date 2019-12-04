if 0 < actex && todo_is_playing()
{
	if todo_signal(todo_current())
		cout("Signal!");

	switch(actex)
	{
		case 1:
			if todo_signal(todo_current())
				hspd_add = todo_get_value(todo_current()) * image_xscale;
		break;
	}
}

if hspd_add != 0
{
	hspd = hspd_add;

	if abs(hspd_add) < hspd_dec
		hspd_add = 0;
	else if 0 < hspd_add
		hspd_add -= hspd_dec;
	else if 0 > hspd_add
		hspd_add += hspd_dec;
}
else
	hspd = 0;

x += hspd;