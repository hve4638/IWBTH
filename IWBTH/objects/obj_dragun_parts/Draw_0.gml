///@desc New Event

u_color = shader_get_uniform(shd_color, "u_color");
//u_cmerge = shader_get_uniform(shd_color, "u_cmerge");

shader_set(shd_color);
shader_set_uniform_f_array(u_color, [showalpha, showalpha, showalpha, 1.0]);


draw_self();
shader_reset();