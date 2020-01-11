if keyboard_check_pressed(vk_space)
{
	onhealth = true;
	show_intro(64, view_h - 64, spr_intro_dragun);
}

if keyboard_check_pressed(ord("0"))
{
	dragun_set(dragun, st_default);
}

if keyboard_check_pressed(ord("1"))
{
	struct_list = st_gunget_list;
	struct_idx = 0;
	struct_speed = 1/3;
	struct_run = true;
}