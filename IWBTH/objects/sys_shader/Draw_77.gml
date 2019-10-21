//draw wave distortion effect
/*
shader_set(sh_basic);

shader_set_uniform_f(u_resolution_water,800.0,600.0);

shader_set_uniform_f(u_seconds_water,sec);

texture_set_stage(u_texture_water, surface_get_texture(application_surface)); //feed application surface into shader

draw_rectangle(0,0,800,600,false);

shader_reset();
*/
//draw godray effect
shader_set(sh_tower);

draw_rectangle(0,0,800,600,false);

shader_reset();

/* */
/*  */
