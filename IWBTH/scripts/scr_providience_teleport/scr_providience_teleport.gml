if on_teleport
{
	tp_idx++;
	onlook = false;

	switch(tp_progress)
	{
		case 0:
			if tp_idx == 1000
			{
				with(instance_create_layer(x, y - 96, L_ABOVE, obj_rectemitter))
				{
					x_distribution = 32;
					y_distribution = 64;
					emit_cnt = 3;
					life = 4;
				}	
			}
			if tp_pretime < tp_idx
			{
				tp_idx = 0;
				tp_progress = 1;
				x = tp_x;
				tp_sign = sign(Player.x - x) != 0 ? sign(Player.x - x) : choose(1, -1);
			}
			else
			{
				image_xscale = sign(image_xscale) * (1 - tp_idx/tp_pretime)
			}
		break;

		case 1:
			if tp_posttime + 2 <= tp_idx
			{
				on_teleport = false;
				tp_progress = 0;
				tp_idx = 0;
				onlook = true;

				image_xscale = tp_sign;
			}
			else
			{
				image_xscale = tp_sign * min((tp_idx/tp_pretime), 1.0)
			}
		break;
	}
}