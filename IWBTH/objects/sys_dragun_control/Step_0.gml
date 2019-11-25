num += keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);

num = clamp(num, 0, ds_list_size(controllist) - 1);

var ins = controllist[| num];

if mouse_check_button(mb_left)
{
	if mouse_check_button_pressed(mb_left)
	{
		mx = mouse_x;
		my = mouse_y;
	}

	ins.x += mouse_x - mx;
	ins.y += mouse_y - my;

	mx = mouse_x;
	my = mouse_y;
}

ins.x += keyboard_check(ord("D")) - keyboard_check(ord("A"));
ins.y += keyboard_check(ord("S")) - keyboard_check(ord("W"));

ins.x = round(ins.x);
ins.y = round(ins.y);