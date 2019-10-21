repeat(3) {
    var j=instance_create(irandom_range(64,800-64) div 32 *32,0,obj_fadegener);
    with(j) {direction=point_direction(x,y,Me.x,Me.y);; speed=32;}
    
    var j=instance_create(irandom_range(64,800-64) div 32 *32+16,0,obj_fadegener);
    with(j) {direction=point_direction(x,y,Me.x,Me.y);; speed=32;}
    
    var j=instance_create(irandom_range(64,800-64) div 32 *32-32,0,obj_fadegener);
    with(j) {direction=point_direction(x,y,Me.x,Me.y);; speed=32;}
}


if t_i++ < 5 {
    timeline_position-=20;
}

