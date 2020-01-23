for(var i = 0; i < 3; i++)
with(instance_create_layer(x, y, L_ABOVE, obj_bulletspread))
{
	idx_start = 3;
	idx_add = 6;
	idx_start += (idx_add / 2) * i;
	bullet_spd = 5.5;
	bullet_spread = 0;
	delay = i * 5;
}

sfx(snd_dragunrpgexplosion);