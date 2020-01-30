life_create(50);
isfade = true;
alpha_variety = 0;
scale_variety = 0;
color_variety = 0;
color = 0;
color_r = 0;
color_g = 0;
color_b = 0;
color_a = 1;
alpha = 1;
scale = 1;

echo_surf = no;
echo_o = [0, 0];

u_color = shader_get_uniform(shd_color, "u_color");
/*
list_alpha = ds_list_create();
list_scale = ds_list_create();
list_color = ds_list_create();
*/