if keyboard_check_pressed(vk_space)
{
	onhealth = true;
	show_intro(64, view_h - 64, spr_intro_dragun);
}

if keyboard_check_pressed(ord("0"))
{
	dragun_set(dragun, st_default);
}

struct_speed = 1/4;

if keyboard_check_pressed(vk_anykey)
switch(keyboard_lastkey)
{
	case ord("1"):
		struct_play(st_gunget);
	break;
	case ord("7"):
		struct_play(st_gunout_front);
	break;
	case ord("2"):
		struct_play(st_gunout_side);
	break;
	case ord("3"):
		struct_play(st_gunshoot_side, 1/4, lock_rightarm);
	break;
	case ord("4"):
		struct_play(st_gunshoot_front, 1/4, lock_rightarm);
	break;
	case ord("5"):
		struct_play(st_guntwirl_stof, 1/4, lock_rightarm);
	break;
	case ord("6"):
		struct_play(st_guntwirl_ftos, 1/4, lock_rightarm);
	break;
}