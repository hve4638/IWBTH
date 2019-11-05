var k=point_direction(x,y,lx,ly);
var i=instance_create(x,y,obj_laser);
i.image_angle=k;

var i=instance_create(x+lengthdir_x(20,k),y+lengthdir_y(20,k),obj_charge);
with(i) {
 get_yscale=0.1;
 get_xscale=0.025;
 get_alpha=-0.05;
 image_xscale=0.3;
 image_yscale=1.4;
 ktime=20;
 image_angle=k;
}

with(sys_camera){
 stime=4;
 shake=16;
}

