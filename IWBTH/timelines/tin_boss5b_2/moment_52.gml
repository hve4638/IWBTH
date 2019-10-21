var dir=point_direction(x,y,Me.x,Me.y)+irandom_range(-45,45);
for(var i=0;i<t_n;i++) {
    var j=instance_create(x,y,obj_beam);
    j.direction=i/t_n*360+dir;
    j.speed=18;
    j.minspd=3;
    j.maxspd=100;
    j.movspd=-0.5;
    
}

t_i++
if t_i mod 4 == 0 {
    xx=irandom_range(416+128,672);
    yy=irandom_range(128,512-128);
    timeline_position-=30;
} else if t_i < 19 {
   timeline_position-=17;
}

