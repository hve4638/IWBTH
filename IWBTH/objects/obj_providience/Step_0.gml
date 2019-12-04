if keyboard_check_pressed(vk_space)
{
	onhealth = true;
	show_intro(64, win_h - 64, spr_intro_providience);
}

if onhealth
{
	var add = (hp - drawhp);
	
	drawhp += add / 10;

	bossbar(drawhp/maxhp);
}

if keyboard_check_pressed(ord("N"))
	todo_play(motion[0]);