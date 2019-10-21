/// @description Particle
speed=clamp(speed+movspd,minspd,maxspd);
image_angle+=movang;
/*
//part_type_speed(particle,min(1,speed),min(4,speed),0,0);
//part_type_direction(particle,direction+180-10,direction+180+10,0,0);
part_emitter_region(Sys,emitter,other.x+64,other.x-64,other.y-48,other.y+32,ps_shape_rectangle,0);
part_emitter_burst(Sys,emitter,particle,16);

/* */
if x+sprite_width div 2<min_x || max_x<x-sprite_width div 2 {
    if r {
        direction+=180;
        r=false;
    } else if 100<die++ instance_destroy();
}

/* */
/*  */
