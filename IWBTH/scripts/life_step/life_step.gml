///@desc
if isno(life)
	exit;

if life <= life_idx
	instance_destroy();
else
	life_idx++;