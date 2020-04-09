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


if mouse_check_button_pressed(mb_left)
{
	with(instance_create_layer(mouse_x, mouse_y, L_PLAYER, obj_radianceplatform))
	{
		depth -= 1;
	}
}