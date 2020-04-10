if !instance_exists(obj_player)
	exit;

if bossphase == 0
	exit;
oninvincible = false;

if bossphase == 3
{
	next_attack = Rmotion.last1;
}
else if bossphase == 5
{
	next_attack = Rmotion.last2;
	canenter3phase = true;
}
else if bossphase == 6
{
	next_attack = Rmotion.lastmissile;
}
else
{
	var np, n;
	np = next_attack;

	while(true)	
	{
		n = rand_next(0);

		if np == n
			continue;

		break;
	}
	rand_adjust(rand_get_index(n));
	
	next_attack = n;
}

if bossphase == 4
	alarm[1] = 40;
else
	alarm[1] = 10;