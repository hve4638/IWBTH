if keyboard_check_pressed(vk_space)
{
	onhealth = true;
	show_intro(32, win_h - 48, spr_intro_providience, 100);
}

if onhealth
{
	var add = (hp - drawhp);
	
	drawhp += add / 10;

	bossbar(drawhp/maxhp);
}

if keyboard_check_pressed(ord("N"))
	timeline(rand_next());