if keyboard_check_pressed(vk_space) && !onhealth
{
	onhealth = true;
	bgm(snd_final, 1);
	bossphase = 1;
	
	scr_radiance_next();
}

if keyboard_check_pressed(ord("1"))
{
	todo_play(motion[Rmotion.phase1end]);
}