with(instance_create_layer(x,y - 3, L_BELOW,obj_bullet))
{
	tile_collision = other.tile_collision;
}

sfx(snd_shoot);