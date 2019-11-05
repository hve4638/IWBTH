var i=instance_create(800,432-ps*10,obj_laser);
i.image_angle=180;

with(sys_camera){
 stime=4;
 shake=6;
}

if ps<8 {ps++; timeline_position-=2;}
else ps=0;

