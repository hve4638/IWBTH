t_i=0;
scp_shake(1,1000,1);

///particle
var j=instance_create(0,0,obj_dimensionparticle);
with(j) {
    p_dir=90;
    x1=0; x2=800;
    y1=610; y2=616;
}

var j=instance_create(0,0,obj_dimensionparticle);
with(j) {
    p_dir=270;
    x1=0; x2=800;
    y1=-2; y2=-8;
}

var j=instance_create(0,0,obj_dimensionparticle);
with(j) {
    p_dir=0;
    x1=-2; x2=-2;
    y1=0; y2=608;
}

var j=instance_create(0,0,obj_dimensionparticle);
with(j) {
    p_dir=180;
    x1=802; x2=808;
    y1=0; y2=608;
}

