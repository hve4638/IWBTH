if keyboard_check_pressed(vk_space) && !onhealth
{
	onhealth = true;
	bgm(snd_radiance, 1);
	bossphase = 1;
	
	scr_radiance_next();
}