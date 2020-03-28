life_step();
var p = life_idx / life;

if den != 0
	image_yscale = num/den;
else
	image_yscale = 0;

if image_yscale <= 0
	instance_destroy();

if !isno(alpha)
	image_alpha = array_value(alpha, p);

num += num_add;
den += den_add;

laserpow = value_merge(laserpow_max, laserpow_min, life_idx/life);