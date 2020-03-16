if !onhealth || oninv
	exit;

hp -= other.damage * armor;

if (bossphase == 1 && hp/maxhp <= 2/3)
|| (bossphase == 2 && hp/maxhp <= 1/3)
{
	alarm[0] = -1;
	
	bossphase++;
	onlaserline = false;
	hspd = sign(other.look) * 7;
	onlook = false;
	look = -other.look;
	next_attack = no;
	next_fix = no;
	
	if bossphase == 2
	{
		armor = 0.9;
		
		todo_play(motion[Hmotion.fall]);
	}
	else if bossphase == 3
	{
		armor = 0.75;
		todo_play(motion[Hmotion.fall2]);
	}
	
	scr_headhunter_pattern_update();
}

if hp < 0
{
	alarm[0] = -1;
	nextenable = false;
	onhealth = false;
	hspd = sign(other.look) * 7;
	
	bgm();
	bossbar();
	onhealth = false;
	
	instance_destroy(obj_headhunterboom);
	instance_destroy(obj_laser);
	instance_destroy(obj_danmaku);
	
	sfx(snd_lasthit);
	
	alarm_trigger(270, scr_gotostageresult);
	sys_global.canrestart = false;
	stageclear(3, 0);

	todo_play(motion[Hmotion.die]);
}

instance_destroy(other);