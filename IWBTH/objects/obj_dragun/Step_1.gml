if keyboard_check_pressed(vk_space)
{
	if !onhealth
	{
		onhealth = true;
		hp = maxhp;
		show_intro(64, view_h - 64, spr_intro_dragun);
		bgm(snd_dragun, true);
		
		scr_dragun_next();
	}
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
	case ord("4"):
		todo_play(motion[3]);
	break;
	case ord("5"):
		todo_play(motion[4]);
	break;
	case ord("6"):
		todo_play(motion[5]);
	break;
	
	case ord("9"):
	break;
}