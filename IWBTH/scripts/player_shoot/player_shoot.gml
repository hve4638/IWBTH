with(instance_create_layer(x,y - 3, L_BELOW,obj_bullet))
{
	look = other.look;
	tile_collision = other.tile_collision;
}

sfx(snd_shoot);