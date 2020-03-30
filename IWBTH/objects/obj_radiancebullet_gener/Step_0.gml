life_step();

var xx, yy;
xx = x + irandom_range(-48, 48);
yy = y + irandom_range(-48, 48);

with(instance_create_layer(xx, yy, L_PLAYER, obj_effect_absorb))
{
	life_create(16);
	sprite_change(spr_radiancebullet_effect);
	blend = bm_add;
	alpha = 0.25;
	xto = other.x + irandom_range(-8, 8);
	yto = other.y + irandom_range(-8, 8);
}
