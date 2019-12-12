if keyboard_check_pressed(vk_space)
{
	onhealth = true;
	show_intro(64, win_h - 64, spr_intro_providience);
}

if keyboard_check_pressed(ord("N"))
	//timeline(rand_next());
	timeline(rand_next());
	//todo_play(motion[2]);

if keyboard_check_pressed(ord("H"))
	hspd_add = image_xscale * 8;

if keyboard_check_pressed(ord("1"))
	timeline(tl_providience01);

if keyboard_check_pressed(ord("2"))
	timeline(tl_providience02);

if keyboard_check_pressed(ord("3"))
	timeline(tl_providience03);

if keyboard_check_pressed(ord("4"))
	timeline(tl_providience04);


if keyboard_check_pressed(ord("5"))
	//timeline(tl_providience04);
	todo_play(motion[4]);
	