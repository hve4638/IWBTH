movspd=0;
minspd=0;
maxspd=100;
movang=0;
r=0;

Sys=part_system_create();
particle = part_type_create();
part_system_depth(Sys,-12);
part_type_shape(particle,pt_shape_sphere);
part_type_size(particle,2.4,2.4,0,0);
part_type_scale(particle,0.2,0.2);
part_type_color1(particle,16777215);
part_type_alpha3(particle,1,0.3,0);
part_type_speed(particle,0.2,0.5,0,0);
part_type_direction(particle,0,180,0,0);
part_type_gravity(particle,0.02,90);
part_type_orientation(particle,0,0,0,0,1);
part_type_blend(particle,0);
part_type_life(particle,50,80);
emitter = part_emitter_create(Sys);

min_x=0;
max_x=room_width;

image_speed=0;
die=0;




///Echo
T=0;
aftx=ds_list_create();
afty=ds_list_create();
afta=ds_list_create();

for(var i=0;i<5;i++) {
    ds_list_add(aftx,-999);
    ds_list_add(afty,-999);
    ds_list_add(afta,1);
}

