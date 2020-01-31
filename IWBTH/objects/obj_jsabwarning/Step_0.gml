life_step();

image_alpha = merge_value(alphap, alphato, (life_idx/life)) + dsin(time_idx * 20) * 0.02;
time_idx++;