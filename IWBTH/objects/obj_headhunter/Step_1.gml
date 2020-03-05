if keyboard_check_pressed(vk_space)
{
	onhealth = true;
	
	bgm(snd_headhunter, 1);
	show_intro(64, view_h - 64, spr_intro_null);
}

if keyboard_check_pressed(ord("1"))
{
	todo_play(motion[0]);
	//sprite_index = spr_headhunter_laser_focus;
}