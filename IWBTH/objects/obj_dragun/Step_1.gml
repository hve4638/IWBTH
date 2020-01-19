if keyboard_check_pressed(vk_space)
{
	onhealth = true;
	hp = maxhp;
	show_intro(64, view_h - 64, spr_intro_dragun);
}

if keyboard_check_pressed(ord("0"))
{
	dragun_set(dragun, st_default);
}

if keyboard_check_pressed(vk_anykey)
switch(keyboard_lastkey)
{
	case ord("1"):
		todo_play(motion[0]);
	break;
	case ord("2"):
		todo_play(motion[1]);
	break;
	case ord("3"):
		todo_play(motion[2]);
	break;
	case ord("9"):
		head_free = true;
		struct_play(st_headshoot, 1/4, lock_neck);
	break;
}