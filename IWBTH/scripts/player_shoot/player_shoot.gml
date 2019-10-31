if (instance_number(obj_bullet) < 9) {
    with(instance_create_layer(x,y - 3, L_BELOW,obj_bullet))
	{
		tile_collision = other.tile_collision;
	}

    scp_sfx(snd_Shoot);
}
