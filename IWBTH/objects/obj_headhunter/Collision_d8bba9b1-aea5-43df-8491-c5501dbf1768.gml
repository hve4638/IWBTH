if !onhealth || oninv
	exit;

hp -= other.damage;

if (bossphase == 1 && hp/maxhp <= 2/3)
|| (bossphase == 2 && hp/maxhp <= 1/3)
{
	alarm[0] = -1;
	
	bossphase++;
	onlaserline = false;
	hspd = sign(other.look) * 7;
	onlook = false;
	look = -other.look;
	todo_play(motion[Hmotion.fall]);
	
	scr_headhunter_pattern_update();
}

instance_destroy(other);