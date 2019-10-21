with (other) {
var i=instance_create(x,y+8,obj_charge);
with(i) {
    image_xscale=2.5; image_yscale=2.5;
    get_xscale=-2.5/15; get_yscale=-2.5/15;
    image_alpha=0; image_blend=c_white;
    get_alpha=0.05; depth=-12;
    ktime=15;
}

onshield=false;

}
