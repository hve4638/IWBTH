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
	
	if next_attack == motion[Hmotion.jump]
	{
		var p = (x - w_left) / (w_right - w_left);
		if p > 0.3 && p < 0.7
		{
			rolltowall = true;
			next_fix = next_attack;
			next_attack = motion[Hmotion.roll];
		}
		else if p < 0.1 || 0 > 0.9
		{
			rolltowall = false;
			next_fix = next_attack;
			next_attack = motion[Hmotion.roll];
		}
	}
	else
	{
		if distance_to_object(obj_player) < 64
		{
			next_fix = next_attack;
			next_attack = motion[Hmotion.roll];
		}
		else if percentage(35)
		{
			next_fix = next_attack;
			next_attack = motion[Hmotion.roll];
		}
	}
}
else
{
	next_attack = next_fix;
	next_fix = no;
}

if next_attack == motion[3]
	next_alarm = 2;


alarm[0] = t;