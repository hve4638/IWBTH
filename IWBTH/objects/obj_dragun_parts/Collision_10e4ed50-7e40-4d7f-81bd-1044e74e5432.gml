if dealto == noone
	exit;

var d = other.damage;
with(dealto)
	hp -= d;

with(other)
	instance_destroy();