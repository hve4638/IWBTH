var j=instance_create(x,y,obj_dball);
j.alarm[0]=50;
j.direction=ps*50;
j.speed=12; j.Sp=-1;
 
if ps<30 {ps+=1 timeline_position-=10;}
else ps=0;

