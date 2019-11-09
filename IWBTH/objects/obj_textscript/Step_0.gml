if on
	alpha += alpha_add;
else
	alpha -= alpha_add;


alpha = clamp(alpha, alpha_min, alpha_max);