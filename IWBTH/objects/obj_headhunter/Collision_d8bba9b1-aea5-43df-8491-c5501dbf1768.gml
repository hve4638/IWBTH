if !onhealth || oninv
	exit;

hp -= other.damage;

if (bossphase == 0 && hp/maxhp <= 2/3)
|| (bossphase == 1 && hp/maxhp <= 1/3)
{
	alarm[0] = -1;
	
	bossphase++;
	onlaserline = false;
	hspd = sign(other.look) * 7;
	onlook = false;
	look = -other.look;
	todo_play(motion[Hmotion.fall]);
	
	if bossphase == 1
		rand_create(motion[Hmotion.laser2], motion[Hmotion.dash2], motion[Hmotion.boom2], motion[Hmotion.jump]);
	else if bossphase == 2
		rand_create(motion[Hmotion.laser2], motion[Hmotion.dash3], motion[Hmotion.boom2], motion[Hmotion.jump]);

	
	//sprite_change(spr_headhunter_falldown);
	//x = clamp(x, w_left + 64, w_right - 96);
}

instance_destroy(other);