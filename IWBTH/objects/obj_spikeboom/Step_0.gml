if image_xscale<1.6 {
    image_xscale+=0.05;
    image_yscale+=0.05;
}

if collision_point(x,y,obj_block,1,0)!=noone {
    var i=instance_create(x+16,424,summon);
    i.nx=-32; i.c=c;
    var i=instance_create(x-16,424,summon);
    i.nx=32; i.c=c;
    instance_destroy();
}

if T++ mod 3==0 t=random_range(-0.3,0.3);

