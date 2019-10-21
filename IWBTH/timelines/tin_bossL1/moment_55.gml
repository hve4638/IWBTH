var j=instance_create(x,y,obj_dball);
j.alarm[0]=60;
j.direction=point_direction(x,y,Me.x,Me.y)-60;
j.speed=10; j.Sp=-1;
var j=instance_create(x,y,obj_dball);
j.alarm[0]=60;
j.direction=point_direction(x,y,Me.x,Me.y)+60;
j.speed=10; j.Sp=-1;
 
if t_i++<8 {timeline_position-=20;}

