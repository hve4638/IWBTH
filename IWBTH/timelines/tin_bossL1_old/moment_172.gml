var i=instance_create(x,0,obj_laser);
i.image_angle=270;

with(sys_camera){
 stime=2;
 shake=4;
}

if ps<10 {timeline_position-=1; ps+=1;}
else ps=0;

