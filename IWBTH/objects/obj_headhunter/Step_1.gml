if keyboard_check_pressed(vk_space)
{
	onhealth = true;
	
	bgm(snd_headhunter, 1);
	show_intro(64, view_h - 64, spr_intro_headhunter);
	
	scr_headhunter_next();
}