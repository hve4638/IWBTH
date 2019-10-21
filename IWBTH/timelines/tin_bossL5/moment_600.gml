repeat(1) {
    var i=instance_create(0,irandom_range(64,608-64),obj_gear);
    i.direction=0; i.speed=irandom_range(3,6);
    
    var i=instance_create(800,irandom_range(64,608-64),obj_gear);
    i.direction=180; i.speed=irandom_range(3,6);
    
    var i=instance_create(irandom_range(64,800-64),0,obj_gear);
    i.direction=270; i.speed=irandom_range(5,6);
    
    var i=instance_create(irandom_range(64,800-64),608,obj_gear);
    i.direction=90; i.speed=irandom_range(3,4);
}

if t_i++<30 {
    timeline_position-=18;
} else {
    t_i=0;
    scp_shake(1,1,1);
    with(obj_dimensionparticle) On=0;
}

