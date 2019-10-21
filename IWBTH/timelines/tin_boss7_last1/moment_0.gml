/// @description Aqua Pattern
t_i=0; t_j=3; t_k=0;


for(var i=0;i<room_width;i+=32) {
    var j=instance_create(i,608,obj_water3);
    with(j) {
        image_alpha=0.8;
        image_blend=c_red;
        vspeed=-4;
    }
}
var j=instance_create(0,608+32,obj_water);
with(j) {
    image_xscale=30;
    image_yscale=30;
    image_alpha=0.8;
    image_blend=c_red;
    vspeed=-4;
}

depth=-10;

