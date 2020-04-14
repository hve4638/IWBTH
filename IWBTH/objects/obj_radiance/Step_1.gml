if keyboard_check_pressed(vk_space) && bossphase == 0
{
	onhealth = true;
	bgm(snd_radiance, 1);
	bossphase = 1;
	
	show_intro(64, view_h - 64, spr_intro_radiance);
	scr_radiance_next();
}

if keyboard_check_pressed(ord("1"))
	todo_play(motion[Rmotion.die]);