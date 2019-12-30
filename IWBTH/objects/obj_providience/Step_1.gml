if keyboard_check_pressed(vk_space)
{
	scr_providience_start();
}

if keyboard_check_pressed(ord("1"))
{
	todo_play(motion[7]);
}


if keyboard_check_pressed(ord("2"))
{
	state = StateP.attack;
	todo_play(motion[6]);
}