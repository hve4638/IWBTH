p_i=0;
var i=0;
while(i<room_width) {
    var t=instance_create(i,-32,obj_chain);
    t.direction=point_direction(t.x,t.y,Me.x+irandom_range(-16,16),Me.y+irandom_range(-16,0));
    t.speed=irandom_range(10,20);
    t.movspd=-1; t.maxspd=100;
    t.alarm[0]=irandom_range(40,60);
    
    i+=irandom_range(96,160);
}

