xx+=48; x+=48;
var i=instance_create(x,0,obj_laser);
i.image_angle=270;

with(sys_camera) {stime=2; shake=4;}

if ps<14 {timeline_position-=5; ps++;}
else ps=0;

