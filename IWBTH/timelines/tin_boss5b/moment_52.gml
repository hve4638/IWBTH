var dir=point_direction(x,y,Me.x,Me.y)+irandom_range(-45,45);
for(var i=0;i<t_n;i++) {
    var j=instance_create(x,y,obj_beam);
    j.direction=i/t_n*360+dir;
    j.speed=18;
    j.minspd=4;
    j.maxspd=100;
    j.movspd=-0.5;
    
}

if t_i++ < 10 {
       timeline_position-=20;
}

