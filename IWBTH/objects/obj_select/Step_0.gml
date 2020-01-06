if !enable
{
	onmouse = false;
	onact = false;

	exit;
}

var w, h;
w = check_w div 2;
h = check_h div 2;

onmouse = point_in_rectangle(mouse_x, mouse_y, dw_x - w, dw_y - h, dw_x + w, dw_y + h);

if type == Select.nothing
	onmouse = false;

if onmouse && mouse_check_button_pressed(mb_left)
{
	if type == Select.goto
	{
		with(sys_title)	
		{
			status = other.goto;
			
			event_user(0);
		}
	}
	else if type == Select.scroll || type == Select.list
	{
		with(obj_select)
			enable = false;
		
		onact = true;
		enable = true;
	}
	else if type == Select.script
		script_execute(script);
	else if type == Select.toggle
		arr[@ idx] = !arr[@ idx];
	else if type == Select.game
	{
		global_fade_set(1.0, 50, c_black);
		save_idx = save_num;
		
		with(instance_create_layer(0, 0, L_SYS, obj_gamestart))
			alarm[0] = 50;

		with(parent_title)
			enable = false;
	}
}

if onact
{
	var n = 0;

	if type == Select.scroll
	{
		n += (mouse_wheel_up() - mouse_wheel_down()) * 5;
		n += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);

		percent = clamp(percent + n, 0, 100);
	}
	else if type == Select.list
	{
		n += (mouse_wheel_down() - mouse_wheel_up());
		n += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left)

		list_idx = clamp(list_idx + n, 0, ds_list_size(list) - 1);
	}

	if mouse_check_button_pressed(mb_right) || keyboard_check_pressed(vk_escape)
	{
		if type == Select.scroll
			arr[@ idx] = percent;
		
		if type == Select.list
			arr[@ idx] = list_idx;

		with(obj_select)
			enable = true;

		onact = false;
	}
}
