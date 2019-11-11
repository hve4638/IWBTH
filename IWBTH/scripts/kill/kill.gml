var _x, _y;
_x = 0;
_y = 0;

with(obj_player)
{
	_x = x;
	_y = y;
	//instance_create(x, y, obj_blood_gener)
}

sfx(snd_death);
instance_destroy(Player);
instance_create(_x, _y, obj_player_fake);