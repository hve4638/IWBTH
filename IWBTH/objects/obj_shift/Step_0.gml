/// @description particle
if EFFECT {
    part_type_direction(particle,dir,dir,0,0);
    part_type_color1(particle,col);
    part_emitter_region(Sys,emitter,x,x,y,y+image_yscale*32,3,0);
    part_emitter_burst(Sys,emitter,particle,1);
}

