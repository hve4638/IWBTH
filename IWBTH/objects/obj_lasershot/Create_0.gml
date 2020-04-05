/*dir=point_direction(x,y,Me.x,Me.y);
lx=lengthdir_x(16,dir);
ly=lengthdir_y(16,dir);
var i=instance_create(x,y,obj_charge);
with(i) {
    ktime=13;
    image_blend=c_black;
    image_xscale=4;
    image_yscale=4;
    image_alpha=0;
    get_xscale=-0.2;
    get_yscale=-0.2;
    get_alpha=0.1;
}

alarm[0]=13;

