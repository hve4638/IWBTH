var ox, oy;
ox = x - sprite_xoffset + sprite_get_xoffset(spr_player_idle);
oy = y - sprite_yoffset + sprite_get_yoffset(spr_player_idle);

if !instance_exists(obj_player)
{
    with(instance_create_layer(ox,oy,L_PLAYER,obj_player))
	{
		look = other.look;
	}

	cout("player create by " + object_get_name(object_index));
}

instance_destroy();