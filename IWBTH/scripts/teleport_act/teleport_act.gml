if isno(toroom)
	exit;

if pos_remain
{
	var l = noone;

    if instance_exists(obj_player)
	{
		l = instance_create_layer(obj_player.x, obj_player.y, layer, obj_create_nextroom);

		if is_absx l.x = r_absx;
		if is_absy l.y = r_absy;

		l.x += r_addx;
		l.y += r_addy;

		if isno(r_modw) l.x = modulo(l.x, r_modw);
		
		if isno(r_modh) l.y = modulo(l.y, r_modh);
	}
}

room_goto(toroom);