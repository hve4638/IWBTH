orbnum=0;
image_alpha=0;

Sys=part_system_create();
particle = part_type_create();
part_type_shape(particle,pt_shape_sphere);
part_type_size(particle,0.60,0.60,-0.02,0);
part_type_scale(particle,0.6,0.6);
part_type_color1(particle,c_blue);
part_type_alpha1(particle,1);
part_type_speed(particle,0,0,0,0);
part_type_direction(particle,0,359,0,0);
part_type_gravity(particle,0,270);
part_type_orientation(particle,0,0,0,0,1);
part_type_blend(particle,0);
part_type_life(particle,25,25);
emitter = part_emitter_create(Sys);

