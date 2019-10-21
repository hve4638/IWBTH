for(i=t_i*32;i<=800-t_i*32;i+=32) {
    instance_create(i,t_i*32,obj_dimensionwarning);
    instance_create(i,608-t_i*32,obj_dimensionwarning);
}
for(i=t_i*32;i<=608-t_i*32;i+=32) {
    instance_create(t_i*32,i,obj_dimensionwarning);
    instance_create(800-t_i*32,i,obj_dimensionwarning);
}

if t_i++<=7 {
    timeline_position-=4;
}

