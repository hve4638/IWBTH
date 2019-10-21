if !sys_global.towershader return 0;

shader_set(sh_tower);
shader_set_uniform_f(camX,sys_cam.x);
shader_set_uniform_f(camY,sys_cam.y);
