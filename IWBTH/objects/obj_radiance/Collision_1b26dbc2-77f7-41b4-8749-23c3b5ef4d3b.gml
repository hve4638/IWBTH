if !onhealth
	exit;
if oninvincible
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
			
			
			camera_set_yrange(0, room_height);
			canenter2phase = true;
			
			todo_play(motion[Rmotion.phase1end]);
		}
	break;
	
	case 4:
		if p <= 0.35
		{
			bossphase = 5;
			canenter3phase = true;
		}
	break;
}