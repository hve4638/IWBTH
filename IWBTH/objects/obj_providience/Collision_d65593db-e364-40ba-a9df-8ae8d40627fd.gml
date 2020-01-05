if !onhealth
	exit;

hp -= other.damage;

instance_destroy(other);

if bossphase == 1 && hp / maxhp <= 0.5
	bossphase = 2;

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