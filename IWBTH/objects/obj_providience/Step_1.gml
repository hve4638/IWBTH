if keyboard_check_pressed(vk_space)
{
	onhealth = true;
	show_intro(64, win_h - 64, spr_intro_providience);
}

if keyboard_check_pressed(ord("N"))
{
	state = StateP.attack;
	todo_play(rand_next());
}

if keyboard_check_pressed(ord("1"))
{
	state = StateP.attack;
	timeline(tl_providience01);
}

if keyboard_check_pressed(ord("2"))
{
	state = StateP.attack;
	timeline(tl_providience02);
}

if keyboard_check_pressed(ord("3"))
{
	state = StateP.attack;
	timeline(tl_providience03);
}

if keyboard_check_pressed(ord("4"))
{
	state = StateP.attack;
	timeline(tl_providience04);
}

if keyboard_check_pressed(ord("5"))
	todo_play(motion[4]);


if keyboard_check_pressed(ord("6"))
	todo_play(motion[5]);
	
if keyboard_check_pressed(ord("0"))
	sprite_change(spr_providience_idle, 0);


if keyboard_check_pressed(ord("J"))
	hspd_move = -256;

if keyboard_check_pressed(ord("K"))
	hspd_move = 256;

if keyboard_check_pressed(ord("L"))
	state = StateP.walk;

if keyboard_check_pressed(ord("M"))
	state = StateP.dash;