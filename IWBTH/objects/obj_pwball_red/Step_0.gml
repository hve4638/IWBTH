if on {
    speed=6;
    direction=point_direction(x,y,tox,toy);
    if point_distance(x,y,tox,toy)<5 {
        on=false; speed=11;
        direction=point_direction(x,y,Me.x,Me.y)+irandom_range(-3,3);
    }
}


if collision_point(x,y,obj_block,1,0)!=noone {
    if /*0<x && x<800*/ 448-8<=y {
        var i=instance_create(x,y,obj_meteo);
        i.ep=1;
        instance_destroy();
    }
}

if x<-64 || 800+64<x instance_destroy();

/* */
/*  */
