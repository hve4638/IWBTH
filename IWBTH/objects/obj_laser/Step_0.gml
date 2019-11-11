if den != 0
	image_yscale = num/den;
else
	image_yscale = 0;

if life <= life_idx
	instance_destroy();

num += num_add;
den += den_add;
life_idx++;