with(obj_headhunter)
{
	nextenable = true;
	hp = maxhp;
	onhealth = true;
	bossphase = 1;

	show_intro(64, view_h - 64, spr_intro_headhunter);
	with(sys_global)
		intro_alpha = 1.0;

	scr_headhunter_pattern_update();
	scr_headhunter_next();
}
