if delay == 0
{
	for(var i = idx_start; i < idx_start + idx_end; i += idx_add)
	{
		with(instance_create_layer(x, y, L_ABOVE, obj_danmaku))
		{
			direction = i + irandom_range(-other.bullet_spread, other.bullet_spread);
			speed = other.bullet_spd;
		}
	}
	instance_destroy();
}

delay--;