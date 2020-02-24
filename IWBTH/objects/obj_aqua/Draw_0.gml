gpu_set_tex_filter(false);

var yy = y + (floating(time_idx, 150) - 0.5) * 4;
draw_self_pos(floor(x), yy);

gpu_set_tex_filter(true);