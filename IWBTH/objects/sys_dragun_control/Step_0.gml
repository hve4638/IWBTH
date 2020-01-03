num += keyboard_check_pressed(221) - keyboard_check_pressed(219);

if keyboard_check_pressed(vk_anykey)
{
	if ord("1") <= keyboard_lastkey && keyboard_lastkey <= ord("9")
	{
		num = keyboard_lastkey - ord("1");
	}
}

num = clamp(num, 0, array_length_1d(arr) - 1);

var ins = arr[num];

if mouse_check_button(mb_right)
{
	if mouse_check_button_pressed(mb_left)
	{
		ins.x = mouse_x;
		ins.y = mouse_y;
	}
}
else if mouse_check_button(mb_left)
{
	if mouse_check_button_pressed(mb_left) || mouse_check_button_released(mb_right)
	{
		mx = mouse_x;
		my = mouse_y;
	}

	ins.x += mouse_x - mx;
	ins.y += mouse_y - my;

	mx = mouse_x;
	my = mouse_y;
}

if keyboard_check_pressed(ord("L"))
	gridint = get_integer("input gridint", "");

if !keyboard_check(vk_alt)
{
	ins.x += (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * gridint;
	ins.y += (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * gridint;
}
else
{
	ins.x += (keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"))) * gridint;
	ins.y += (keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))) * gridint;
}
ins.x = round(ins.x);
ins.y = round(ins.y);