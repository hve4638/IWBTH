life_step();

image_xscale = thick;
image_yscale = length;
image_angle += angle_add;
image_alpha = merge_value(alphap, alphato, (life_idx/life)) + dsin(time_idx * 20) * alphawave;
time_idx++;