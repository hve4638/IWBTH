if keyboard_check_pressed(ord("1"))
{
	todo_play(motion[Rmotion.missile]);
}

if keyboard_check_pressed(ord("3"))
{
	ontrap = true;
	trap_type = 0;
}

if keyboard_check_pressed(vk_space) && !onhealth
{
	onhealth = true;
	bgm(snd_final, 1);
	
	scr_radiance_next();
}