/*var ox, oy;
ox = x - sprite_get_xoffset(sprite_index) + sprite_get_xoffset(spr_player_idle);
oy = y - sprite_get_yoffset(sprite_index) + sprite_get_yoffset(spr_player_idle);

if !instance_exists(obj_player)
{
    with(instance_create_layer(ox,oy,L_PLAYER,obj_player))
	{
		look = sign(image_xscale);
	}
	//cout("player create by " + object_get_name(object_index));
}

instance_destroy();