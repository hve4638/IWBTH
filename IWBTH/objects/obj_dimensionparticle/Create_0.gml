p_dir=90;
x1=0; y1=604;
x2=800; y2=610;
On=1; t=0;

///Particle
Sys=part_system_create();
particle = part_type_create();
part_type_shape(particle,pt_shape_sphere);
part_type_size(particle,1,1,-0.01,0);
part_type_scale(particle,0.80,0.90);
part_type_color1(particle,16777215);
part_type_alpha2(particle,1,0);
part_type_speed(particle,0.30,0.50,0,0);
part_type_direction(particle,0,359,0,0);
part_type_gravity(particle,0.03,90);
part_type_orientation(particle,0,0,0,0,1);
part_type_blend(particle,0);
part_type_life(particle,60,60);
emitter = part_emitter_create(Sys);

