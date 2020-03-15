life_step();

if den != 0
	image_yscale = num/den;
else
	image_yscale = 0;

if image_yscale <= 0
	instance_destroy();

num += num_add;
den += den_add;

laserpow = value_merge(laserpow_max, laserpow_min, life_idx/life);