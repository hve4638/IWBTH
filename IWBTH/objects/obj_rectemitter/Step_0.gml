life_step();

repeat(emit_cnt)
{
	var ex, ey;
	ex = gauss_rand(x, x_distribution);
	ey = gauss_rand(y, y_distribution);

	with(instance_create_layer(ex, ey, layer, obj_rect))
	{
		vspd = random_range(0, 0.7);
		life = irandom_range(40, 65);
	}
}