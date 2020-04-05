if !onhealth
	exit;

hp -= other.damage;
instance_destroy(other);

var p = hp/maxhp;
switch(bossphase)
{
	case 1:
		if p <= 0.6
			bossphase = 2;
	break;

	case 2:
		if p <= 0.25
		{
			bossphase = 3;
			
			ontrap = true;
			trap_type = 2;

		}
	break;
	
	case 3:
		if p <= 0
		{
			onhealth = false;
			
			camera_fade_set(1.0, 0, c_white);
			camera_fade_set(0.0, 5, c_white);
			
			screenshake(10, 2);
			
			onswordtop = false;
			
			instance_destroy(obj_radiancesword);
			instance_destroy(obj_radiancetrap_ready);
			
			sfx(snd_lasthit);
			bossbar();
			
			todo_play(motion[Rmotion.phase1end]);
		}
	break;
}