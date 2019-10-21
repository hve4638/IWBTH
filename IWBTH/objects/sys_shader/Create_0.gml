/// @description sh_godray
u_resolution = shader_get_uniform(sh_godrays, "iResolution");
u_seconds = shader_get_uniform(sh_godrays, "iGlobalTime");

//distortion effect shader
u_resolution_water = shader_get_uniform(sh_basic, "iResolution");
u_seconds_water = shader_get_uniform(sh_basic, "iGlobalTime");
u_texture_water = shader_get_sampler_index(sh_basic, "tex_water");

sec=0;

///surface set
application_surface_draw_enable(false);

