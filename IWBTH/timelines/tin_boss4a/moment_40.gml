i.get_alpha=-0.03;

hp=clamp(hp+10,1,250);
var ab=instance_create(x,y-16,obj_charge);
with(ab) {
    image_blend=c_white;
    image_xscale=4;
    image_yscale=4;
    image_angle=90;
    get_xscale=-0.5;
    get_yscale=-0.5;
    get_alpha=-0.05;
    ktime=15; depth=-20;
}

