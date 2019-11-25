///@desc New Event
reflect_surf = -1;
reflect_list = ds_list_create();
reflect_queue = ds_priority_create();
ds_list_add(reflect_list, obj_player, obj_bullet, obj_slash, obj_echo, obj_hubcolumn, obj_dragun_intro);

reflect_color = 0x99D6FF;
u_sec = shader_get_uniform(shader2, "time");
u_resolution = shader_get_uniform(shader2, "resolution");
u_boundary = shader_get_uniform(shader2, "water_surface");
u_texture = shader_get_sampler_index(shader2, "tex_screen");
life_idx = 0;
sec = 0;


cout("WATER");