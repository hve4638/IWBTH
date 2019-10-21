if On { t=0;
    part_type_gravity(particle,0.10,p_dir);
    part_emitter_region(Sys,emitter,x1,x2,y1,y2,0,0);
    part_emitter_burst(Sys,emitter,particle,4);
} else if 60<t++ instance_destroy();

