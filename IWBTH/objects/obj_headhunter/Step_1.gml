if keyboard_check_pressed(vk_space)
{
	onhealth = true;
	
	bgm(snd_headhunter, 1);
	show_intro(64, view_h - 64, spr_intro_headhunter);
	
	scr_headhunter_next();
}

if keyboard_check_pressed(ord("1"))
{
	todo_play(motion[2]);
}

if keyboard_check_pressed(ord("2"))
{
	todo_play(motion[3]);
}
