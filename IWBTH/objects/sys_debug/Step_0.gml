if keyboard_check_pressed(vk_f1)
	show_info = !show_info;

if keyboard_check_pressed(vk_f2)
{
	save_read();
	cout("read save" + string(save_idx) + ".");
}

if keyboard_check_pressed(vk_f3)
	screenshake(10, 5);
