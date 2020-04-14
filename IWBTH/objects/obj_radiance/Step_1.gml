if keyboard_check_pressed(vk_space) && bossphase == 0
{
	onhealth = true;
	bgm(snd_radiance, 1);
	bossphase = 1;
	
	scr_radiance_next();
}

if keyboard_check_pressed(ord("1"))
	todo_play(motion[Rmotion.die]);

if keyboard_check_pressed(ord("3"))
	todo_play(motion[Rmotion.laser]);

if keyboard_check_pressed(ord("2"))
	onspreaddream = !onspreaddream;