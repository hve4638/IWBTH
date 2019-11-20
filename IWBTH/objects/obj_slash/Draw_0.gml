x = round(x);
y = round(y);

gpu_set_tex_filter(false);
draw_self();
gpu_set_tex_filter(true);