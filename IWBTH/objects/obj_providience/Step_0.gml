if todo_is_playing()
{	
	scr_providience_todo();

	if 0 < bossphase && todo_end(todo_current())
		scr_providience_next()
}

scr_providience_teleport();

if onabsorb
{
	repeat(3)
		with(instance_create_layer(x + irandom_range(-184, 184), y + irandom_range(-256 - 32, 64), L_BELOW, obj_effect_abs))
		{
			to_x = other.x;
			to_y = other.y - 96;
			image_xscale = 0.75;
			image_yscale = 0.75;
	
			life = 25;
		}
}

if bossphase == 2
	echo_self(15, c_white, 1.0, [0.15, 0]);

if hspd_add != 0
{
	hspd = hspd_add;

	if abs(hspd_add) < hspd_dec
		hspd_add = 0;
	else if 0 < hspd_add
		hspd_add -= hspd_dec;
	else if 0 > hspd_add
		hspd_add += hspd_dec;
}
else
{
	if hspd_move != 0
	{
		if state == StateP.walk
			hspd = sign(hspd_move) * walkspd;
		else if state == StateP.dash
			hspd = sign(hspd_move) * dashspd;
		else
			hspd_move = 0;
		
		if abs(hspd_move) < abs(hspd)
			hspd_move = 0;
		else
			hspd_move -= hspd;
	}
}

x += hspd;