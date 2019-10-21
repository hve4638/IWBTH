/// @description Charge
var i=instance_create(sx,sy,obj_charge);
with(i) {
    image_blend=c_white;
    image_xscale=1;
    image_yscale=1;
    image_angle=90;
    get_xscale=1;
    get_yscale=1;
    get_alpha=-0.01;
    ktime=30; depth=-110;
}

///shoot
with(obj_danmaku) {
    speed=-1;
    movspd=0.2;
    maxspd=10;
    minspd=-5;
    image_index=3;
}

