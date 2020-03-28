if !instance_exists(obj_player)
	exit;

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
todo_play(motion[next_attack]);