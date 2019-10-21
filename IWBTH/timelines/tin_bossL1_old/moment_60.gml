 var j=instance_create(x,y,obj_dball);
 j.alarm[0]=60;
 j.direction=point_direction(x,y,obj_fakeplayer.x,obj_fakeplayer.y)-60;
 j.speed=10; j.Sp=-1;
 var j=instance_create(x,y,obj_dball);
 j.alarm[0]=60;
 j.direction=point_direction(x,y,obj_fakeplayer.x,obj_fakeplayer.y)+60;
 j.speed=10; j.Sp=-1;
 
if ps<8 {ps+=1 timeline_position-=20;}
else ps=0;

