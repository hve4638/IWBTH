for(var i = 0; i < h_9p; i ++)
	for(var j = 0; j < w_9p; j ++)
	{
		var ind = 0;
		if i == 0
			ind += 0;
		else if i == h_9p - 1
			ind += 3 * 2;
		else
			ind += 3;

		if j == 0
			ind += 0;
		else if j == w_9p - 1
			ind += 2;
		else
			ind += 1;
		
		draw_sprite_ext(spr_jsabblock_9p, ind, x + 16 * j, y + 16 * i, 1, 1, 0, c_white, image_alpha);
	}
