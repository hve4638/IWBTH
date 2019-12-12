if keyboard_check_pressed(vk_f1)
	show_info = !show_info;

if keyboard_check_pressed(vk_f2)
{
	save_read();
	cout("read save" + string(save_idx) + ".");
}

if keyboard_check_pressed(vk_f3)
	on_convkey = !on_convkey;

if keyboard_check_pressed(vk_f7)
	on_teleport = !on_teleport;

if keyboard_check_pressed(vk_f9)
{
	if !instance_exists(sys_record)
		instance_create_layer(0,0,L_SYS, sys_record);
	else
		instance_destroy(sys_record);
}

if keyboard_check_pressed(vk_f4)
	on_viewratio = !on_viewratio;

if on_viewratio
{
	view_ratio += (mouse_wheel_down() - mouse_wheel_up()) * 0.1;
	view_ratio = max(view_ratio, 1.0);
	
	camera_set_view_size(view_camera[0], 1088 * view_ratio, 608 * view_ratio);
}
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

if mouse_check_button_pressed(mb_right)
{
	cout("gener");
	instance_create_layer(mouse_x, mouse_y, L_ABOVE, obj_lasergener);
}

if on_teleport
{
	if mouse_check_button_pressed(mb_left)
		with(Player)
		{
			x = mouse_x;
			y = mouse_y;
		}
}