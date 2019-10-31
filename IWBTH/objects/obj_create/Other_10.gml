var ox, oy;
ox = x - sprite_xoffset + sprite_get_xoffset(spr_player_idle);
oy = y - sprite_yoffset + sprite_get_xoffset(spr_player_idle);
if !instance_exists(obj_player)
{
    with(instance_create(ox,oy,obj_player))
	{
		look = sign(image_xscale);
	}
}

instance_destroy();