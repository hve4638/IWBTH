if keyboard_check_pressed(vk_f1)
	show_info = !show_info;

if keyboard_check_pressed(vk_f2)
{
	save_read();
	cout("read save" + string(save_idx) + ".");
}

if keyboard_check_pressed(vk_f3)
	on_convkey = !on_convkey;


if on_convkey
{
	if keyboard_check_pressed(ord("S"))
		with(obj_player)
		{
			save();
			instance_create_depth(x, bbox_top - 8, 0, obj_savetext);
			echo_self(50, 1, c_white);
		}
}