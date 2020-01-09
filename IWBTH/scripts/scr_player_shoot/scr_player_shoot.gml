var ins = instance_create_layer(x,y - 3, L_BELOW,obj_bullet);

with(ins)
{
	look = other.look;
	tile_collision = other.tile_collision;
}

sfx(snd_shoot);

with(sys_debug)
{
	if on_deal
		ins.damage = 100;
}