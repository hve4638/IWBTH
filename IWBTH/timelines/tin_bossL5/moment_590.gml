switch(choose(0,1,2,3)) {
    case 0:
        var i=instance_create(0,irandom_range(64,608-64),obj_gear);
        i.direction=0; 
    break;
    
    case 1:
        var i=instance_create(800,irandom_range(64,608-64),obj_gear);
        i.direction=180;
    break;
    
    case 2:
        var i=instance_create(irandom_range(64,800-64),0,obj_gear);
        i.direction=270;
    break;
    
    case 3:
        var i=instance_create(irandom_range(64,800-64),608,obj_gear);
        i.direction=90;
    break;
}
i.speed=irandom_range(3,6);

