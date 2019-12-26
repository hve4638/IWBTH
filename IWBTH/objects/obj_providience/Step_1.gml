if keyboard_check_pressed(vk_space)
{
	scr_providience_start();
}

if keyboard_check_pressed(ord("1"))
{
	on_teleport = true;
	tp_x = Player.x + 96 * choose(1,-1);
	alarm[1] = 50;
}


if keyboard_check_pressed(ord("2"))
{
	state = StateP.attack;
	todo_play(motion[6]);
}