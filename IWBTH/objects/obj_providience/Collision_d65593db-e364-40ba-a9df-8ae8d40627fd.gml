if !onhealth
	exit;

hp -= other.damage;

instance_destroy(other);

if bossphase == 1 && hp / maxhp <= 0.6
{
	rand_reset(motion[7], motion[8], motion[2], motion[3], motion[1]);
	repeat(3) rand_adjust(rand_get_index(motion[3]));
	
	next_cnt = 1;
	next_attack = motion[3];
	next_fix = ActionP.attack;

	bossphase = 2;
}

if hp <= 0
{
	bgm();
	bossbar();
	onhealth = false;
	
	sfx(snd_lasthit);

	if todo_is_playing()
		todo_stop();
		
	screenshake(20, 1);
	
	bossphase = -1;
	todo_play(motion[9]);
	
	alarm[0] = -1;
	alarm[1] = -1;
	
	onlook = false;
	hspd_add = - 14 * image_xscale;
	state = StateP.die;
	
	sprite_index = spr_providience_idle;
}