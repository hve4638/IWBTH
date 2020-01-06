///패턴후 행동
if bossphase < 0
	exit;

if !instance_exists(obj_player)
	exit;

var range, dis;
var n, np;
dis = (Player.x - x);
next_cnt++;

if next_cnt == 1
{
	np = rand_p;
	
	if abs(dis) > 192 && irandom(2400) < away_time
	{
		next_attack = motion[6];
		next_fix = ActionP.attack;
		away_time = 0;
		
		n = next_attack;
		rand_p = motion[6];
	}
	else
	{
		while(true)	
		{
			n = rand_next(0);

			if np == n
				continue;
			
			if (n == motion[0] && np == motion[7])
			|| (n == motion[1] && np == motion[8])
			|| (n == motion[2] && np == motion[6])
			|| (n == motion[3] && np == motion[5])
			|| (n == motion[4] && np == motion[8])
			|| (n == motion[5] && np == motion[3])
				continue;
				
			if n == motion[3] && bossphase == 1 && hp/maxhp < 0.7
				continue;

			if n == motion[1] && abs(dis) < 128
				continue;
		
			if n == motion[3] && abs(dis) < 128 + 48
				continue;

			break;
		}
		rand_adjust(rand_get_index(n));
		next_attack = n;
		
		if bossphase == 2
		{
			if next_attack == motion[0] && choose(0,1,1)
				next_attack = motion[7];
			else if (next_attack == motion[1] || next_attack == motion[4]) && choose(0,1)
				next_attack = motion[8];
		}
		
		rand_p = n;
	}
}
else
{
	n = next_attack;
}

if n == motion[0]
	range = 256 + 64;
else if n == motion[1]
	range = 512 + 128;
else if n == motion[2]
	range = 512;
else if n == motion[3]
	range = 1024;
else if n == motion[4]
	range = 2048;
else if n == motion[5]
	range = 512;
else if n == motion[7]
	range = 256 + 64;
else if n == motion[8]
	range = 512 + 128;
else
	range = 256;

if (range > abs(dis) && next_fix == ActionP.nothing) || next_fix == ActionP.attack//Attack
{
	next_action = ActionP.attack;

	if next_cnt == 1
		alarm[0] = 20;
	else
		alarm[0] = 15;
}
else
{
	if (irandom_range(256,max(256, 512 - (next_cnt - 1) * 64)) < abs(dis) && next_fix == ActionP.nothing) || next_fix == ActionP.teleport
	{
		alarm[0] = 5;
		next_action = ActionP.teleport;
	}
	else
	{
		alarm[0] = 2;
		next_action = bossphase >= 2 ? ActionP.dash : ActionP.walk;
	}
}

if bossphase >= 2 && 1 < alarm[0]
	alarm[0] = max(1, alarm[0] * 5 div 5);

next_fix = ActionP.nothing;