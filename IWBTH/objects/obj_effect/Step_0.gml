var p = life_idx / life;

if !isno(alpha)
	image_alpha = array_value(alpha, p);

if !isno(xscale)
	image_xscale = array_value(xscale, p);

if !isno(yscale)
	image_yscale = array_value(yscale, p);

if imagelifematch
	image_index = image_number * p;

life_step();