if keyboard_check_pressed(vk_space) && bossphase == 0
{
	bgm(snd_radiance, 1);
	bossphase = 1;
	
	todo_play(motion[Rmotion.phase1enter]);
}