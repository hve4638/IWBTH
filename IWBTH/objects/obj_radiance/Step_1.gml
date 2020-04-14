if keyboard_check_pressed(vk_space) && bossphase == 0
{
	onhealth = true;
	bgm(snd_radiance, 1);
	bossphase = 1;
	
	show_intro(64, view_h - 64, spr_intro_radiance);
	scr_radiance_next();
}

if keyboard_check_pressed(ord("1"))
<<<<<<< HEAD
	todo_play(motion[Rmotion.die]);
=======
	todo_play(motion[Rmotion.die]);

if keyboard_check_pressed(ord("2"))
	onspreaddream = !onspreaddream;
>>>>>>> parent of 2bd79c6... 세이브
