if t_i<t_c {
    var i=instance_create(x+irandom_range(-24,24),y-irandom_range(0,32),obj_fireball);
    with(i) {
        On=false;
        alarm[0]=110;
        direction=point_direction(x,y,clamp(x+irandom_range(-512,512),832,1568),128);
        min_speed=5; max_speed=12;
        speed=10; get_speed=-0.15;
        image_alpha=0.5;
        type=3;
    }
    
    scp_sfx(snd_magic_2,1);
}

with(obj_fireball) {
    if !On && 0<alarm[0] {
        if y<160-16 || alarm[0]<=40 {
            On=true;
            get_speed=0.15;
            max_speed=8.5;
            alarm[0]=40;
        }
    }
}

if t_i<t_c2 {
    t_i++;
    timeline_position-=5;
}

