num += keyboard_check_pressed(190) - keyboard_check_pressed(188);

if keyboard_check_pressed(ord("G"))
	gridint = get_integer("input gridint", "");

if keyboard_check_pressed(ord("C"))
{
	oncancel = !oncancel;
	if oncancel
	{
		num_p = num;
		num = -1;
	}
	else
		num = num_p;
}

mainx = obj_dragun_body.x;
mainy = obj_dragun_body.y;
