/*if xmov!=0 {
    if abs(x-Me.x)<8 {
        xmov=0; ymov=8;
        var i=nm;
        if nm!=-1
        with(obj_pwball) {
            if nm==i {xmov=0; ymov=8;}
        }
    }
}


if collision_point(x,y,obj_block,1,0)!=noone {
    if 0<x && x<room_width {
        //var i=instance_create(x,y,obj_meteo);
        //i.ep=1;
    }
    instance_destroy();
}

x+=xmov;
y+=ymov;

