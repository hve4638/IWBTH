///패턴후 행동
if !instance_exists(obj_player)
	exit;

if onlastpattern
	exit;

if isdie
	exit;

if hp/maxhp <= lp_enterp
{
	lp_pos = clamp(obj_player.x, room_width div 5, room_width * 4 div 5);
	armor = 0.33;
	next_attack = motion[7];
	alarm[0] = 60;
	exit;	
}

var np, n;
np = rand_p;

do
{
	n = rand_next(0);
} until(n != np);
rand_adjust(rand_get_index(n));

next_attack = n;
alarm[0] = 40;