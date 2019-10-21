i=0;
while (i<15) {
    var j=instance_create(x+irandom_range(-10,10),y+25-6*i,obj_burst);
    j.alarm[0]=16-i;
    i++;
}

if ++ii<5 {
    timeline_position-=2;
    image_alpha-=0.1;
} else {
    var i=instance_create(0,0,obj_trigger);
    with(i) {On=true; cs=43;}
    instance_destroy();
} 


