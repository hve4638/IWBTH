tox=x;
toy=y;

EFFECT=true;
idx=-1;

col=c_red;
dir=0;

///Particle
Sys=part_system_create();
particle = part_type_create();
part_type_shape(particle,pt_shape_square);
part_type_size(particle,0.20,0.20,0,0);
part_type_scale(particle,1.5,1);
part_type_color1(particle,255);
part_type_alpha2(particle,0.50,0);
part_type_speed(particle,1,8,0,0);
part_type_direction(particle,0,0,0,0);
part_type_gravity(particle,0,270);
part_type_orientation(particle,0,0,0,0,1);
part_type_blend(particle,0);
part_type_life(particle,30,60);
emitter = part_emitter_create(Sys);

