if !onhealth
	exit;
if oninvincible
	exit;

hp -= other.damage * armor;
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
			sfx(snd_radiance_knockdown);
			
			camera_fade_set(0.7, 0, c_white);
			camera_fade_set(0.0, 15, c_white);
			
			screenshake(10, 2);
			
			onswordtop = false;
			
			instance_destroy(obj_radiancesword);
			instance_destroy(obj_radiancetrap_ready);
			
			sfx(snd_lasthit);
			bossbar();
			
			
			camera_set_yrange(0, room_height);
			//canenter2phase = true;
			
			todo_play(motion[Rmotion.phase1end]);
		}
	break;
	
	case 4:
		if p <= 0.3
		{
			bossphase = 5;
			canenter3phase = true;
			armor = 0.0;
			
			hp = maxhp * 0.3;
		}
	break;
	
	case 6:
		armor = 0.55;
		if p <= 0.2
			onlasttrap = true;

		if p < 0
		{
			onlasttrap = false;
			bossphase = -1;
			alarm[0] = -1;
			alarm[1] = -2;
			todo_play(motion[Rmotion.die]);
			stageclear(5, 0);

			with(obj_radianceplatform)
			{
				time_idx = 0;
				destroy_time = 20;
				create_time = no;
			}
			with(obj_radiancetrap_ready)
				instance_destroy();
			with(obj_player)
			{
				frozen = true;
				invin = true;
			}
			with(obj_radiancebullet)
				instance_destroy();
		}
	break;
}





