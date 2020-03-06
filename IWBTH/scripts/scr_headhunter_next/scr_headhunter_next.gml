if !instance_exists(obj_player)
	exit;

var np, n;
var t = next_alarm;
np = next_attack;
next_alarm = 12;


if isno(next_fix)
{
	while(true)	
	{
		n = rand_next(0);

		if np == n
			continue;

		break;
	}

	next_attack = n;
	
	if next_attack == motion[2]
	{
		var p = (x - w_left) / (w_right - w_left);
		if p > 0.35 && p < 0.55
		{
			rolltowall = true;
			next_fix = next_attack;
			next_attack = motion[3];
		}
		else if p < 0.1 || p > 0.9
		{
			rolltowall = false;
			next_fix = next_attack;
			next_attack = motion[3];
		}
	}
	else
	{
		if percentage(50)
		{
			next_fix = next_attack;
			next_attack = motion[3];
		}
	}
}
else
{
	next_attack = next_fix;
	next_fix = no;
}

if next_attack == motion[3]
	next_alarm = 3;
alarm[0] = t;