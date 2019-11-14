///@desc New Event

sec = 0;

u_resolution = shader_get_uniform(shd_water, "iResolution");
u_time = shader_get_uniform(shd_water, "iGlobalTime");
u_texture = shader_get_sampler_index(shd_water, "tex_water");