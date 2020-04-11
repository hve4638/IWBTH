var b = false;
with(obj_radiance)
{
	if canenter2phase
	{
		rand_reset(Rmotion.laser, Rmotion.sword360, Rmotion.swordside, Rmotion.laserall, Rmotion.missile2);
		b = true;
		bossphase = 4;
		maxhp = 240;
		hp = maxhp;
		drawhp = 0;
		
		tele_top = 2000;
		tele_bottom = 2240;
		swordtop_y = 1790;
		todo_play(motion[Rmotion.phase2enter]);
	}
}

if b
	instance_destroy();