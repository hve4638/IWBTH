if !enable || type == Select.nothing
{
	onmouse = false;
	onact = false;
	exit;
}

var w, h;
w = check_w div 2;
h = check_h div 2;

var m = onmouse;
if !onact
{
	if obj_title.check_keyboard
	{
		onmouse = (obj_title.onselect_id == id);
	
		if onmouse && (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter))
			click = true;
	}
	else
	{
		onmouse = point_in_rectangle(mouse_x, mouse_y, dw_x - w, dw_y - h, dw_x + w, dw_y + h);

		if onmouse && mouse_check_button_pressed(mb_left)
			click = true;
	}
}

if onmouse && onmouse xor m
	sfx(snd_ui_click);

if type == Select.game && onmouse
{
	if mouse_check_button_pressed(mb_right) || keyboard_check_pressed(vk_delete)
	{
		if show_question("Are you sure you want to delete?")
		{
			obj_title.savecheck[save_num] = false;

			save_new = true;
		}
	}
}

if onact
{
	var n = 0;
	n += (mouse_wheel_up() - mouse_wheel_down());
	n += (keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left));
	n += (keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down));
	
	if n != 0
		switch(type)
		{
			case Select.scroll:
				percent = clamp(percent + n * 10, 0, 100);
			
				senddata(datakey, percent, obj_title.datarenew);
			break;

			case Select.list:
				list_idx = clamp(list_idx + n, 0, ds_list_size(list) - 1);

				senddata(datakey, list_idx);
			break;
		}

	if mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right)
	|| keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)
	{
		ds_queue_enqueue(obj_title.datarenew, datakey);

		with(obj_select)
			enable = true;

		onact = false;
		
		cout("onact break");
	}
}
