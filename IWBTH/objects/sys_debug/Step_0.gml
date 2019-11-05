if keyboard_check_pressed(vk_f1)
{
	game_save_write();

	cout("write save" + string(save_idx) + ".");
}

if keyboard_check_pressed(vk_f2)
{
	save_read();

	cout("read save" + string(save_idx) + ".");
}