if keyboard_check_pressed(ord("1"))
{
	todo_play(motion[Rmotion.swordside]);
}

if keyboard_check_pressed(ord("2"))
{
	todo_play(motion[Rmotion.sword360]);
}

if keyboard_check_pressed(ord("3"))
{
	todo_play(motion[Rmotion.swordtop]);
}

if keyboard_check_pressed(vk_space) && !onhealth
{
	onhealth = true;
	bgm(snd_final, 1);
	
	scr_radiance_next();
}