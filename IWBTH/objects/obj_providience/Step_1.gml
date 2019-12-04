if keyboard_check_pressed(vk_space)
{
	onhealth = true;
	show_intro(64, win_h - 64, spr_intro_providience);
}

if keyboard_check_pressed(ord("N"))
	todo_play(motion[0]);

if keyboard_check_pressed(ord("H"))
	hspd_add = image_xscale * 8;
