if keyboard_check_pressed(vk_space) && !onhealth
{
	onhealth = true;
	bgm(snd_final, 1);
	bossphase = 1;
	
	scr_radiance_next();
}

if keyboard_check_pressed(ord("1"))
{
	todo_play(motion[Rmotion.phase2start]);
}

if keyboard_check_pressed(ord("2"))
	todo_play(motion[Rmotion.phase2start2]);

if keyboard_check_pressed(ord("3"))
{
	oneyeshine = !oneyeshine;
}

if keyboard_check(ord("4"))
{
	particle_emit(Particle.dream, mouse_x - 64, mouse_x + 64, mouse_y - 128, mouse_y + 128, 15);
}

if mouse_check_button_pressed(mb_left)
{
	with(instance_create_layer(mouse_x, mouse_y, L_PLAYER, obj_platform_radiance))
	{
		image_alpha = 1.0;
		depth -= 1;
				
		particle_emit(Particle.dream, bbox_left, bbox_right, bbox_top, bbox_bottom, 20);
	}
}