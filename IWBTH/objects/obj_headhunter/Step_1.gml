if keyboard_check_pressed(vk_space)
{
	nextenable = true;
	hp = maxhp;
	onhealth = true;
	bossphase = 1;
	
	bgm(snd_headhunter, 1);
	show_intro(64, view_h - 64, spr_intro_headhunter);

	scr_headhunter_pattern_update();
	scr_headhunter_next();
}


if keyboard_check_pressed(ord("1"))
{
	todo_play(motion[Hmotion.fall2]);
}
/*
if mouse_check_button_pressed(mb_right)
{
	var dir = point_direction(x, y, mouse_x, mouse_y);
	var dis = point_distance(x, y, mouse_x, mouse_y) * 0.05;
	var ins = instance_create_layer(x + 64, y - 14, L_ABOVE, obj_headhunterboom);
	var a, b, d, s;
	a = lengthdir_x(dis, dir);
	b = lengthdir_y(dis, dir);
	with(ins)
	{
		hspd = a;
		vspd = b;
		grav = 0.5;
		install_time = 40;
	}
}*/