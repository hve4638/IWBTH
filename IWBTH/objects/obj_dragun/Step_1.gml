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