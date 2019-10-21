var ttx=irandom_range(obj_fakeplayer.x-400,obj_fakeplayer.x+400);
if ttx<10 {ttx=10;}
else if 790<ttx {ttx=790;}
var i=instance_create(ttx,-400,obj_laser);
i.image_angle=point_direction(ttx,-400,lx,ly);

with(sys_cam){
 stime=4;
 shake=6;
}

if ps<25 {ps++; timeline_position-=5;}
else ps=0;

