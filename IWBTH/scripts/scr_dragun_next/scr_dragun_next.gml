///패턴후 행동
if !instance_exists(obj_player)
	exit;
var np, n;
np = rand_p;

do
{
	n = rand_next(0);
} until(n != np);
rand_adjust(rand_get_index(n));

next_attack = n;
alarm[0] = 40;