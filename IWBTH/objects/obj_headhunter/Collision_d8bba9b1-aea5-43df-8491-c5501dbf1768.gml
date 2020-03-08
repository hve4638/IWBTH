if !onhealth || onrolling
	exit;

hp -= other.damage;

if bossphase == 0 && hp/maxhp <= 0.75
{
	bossphase = 1;
	hspd += sign(other.look) * 7;
	todo_play(motion[5]);
}
else if bossphase == 1 && hp/maxhp <= 0.5
{
	bossphase = 2;
	hspd += sign(other.look) * 7;
	todo_play(motion[5]);
}
else if bossphase == 2 && hp/maxhp <= 0.25
{
	bossphase = 3;
	hspd += sign(other.look) * 7;
	todo_play(motion[5]);
}

instance_destroy(other);