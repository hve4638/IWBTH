t_i++;

if t_i mod 8 == 0  && t_i<=70 {
    var i=instance_create(x,y,obj_magic);
    var dr=irandom_range(0,359);
    var ds=irandom_range(32,96);
    i.x+=lengthdir_x(ds,dr);
    i.y+=lengthdir_y(ds,dr);
    i.life=500;
}

with(obj_magic) {
    if (life==480) direction=point_direction(x,y,Me.x,Me.y)+irandom_range(-5,5);
    else if life<480 && life mod 5 == 0 speed+=min(4.5,speed+0.03);
}

if t_i<130 {
    timeline_position--;    
} else alarm[0]=50;

