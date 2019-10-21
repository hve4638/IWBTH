var i=instance_create(x+irandom_range(-48,48),y-irandom_range(0,96),obj_fireball);
with(i) {
    //On=false;
    alarm[0]=30;
    direction=point_direction(x,y,Me.x,Me.y);
    min_speed=0; max_speed=12;
    speed=0; get_speed=0.2;
    image_alpha=0.5;
    type=3;
}
scp_sfx(snd_magic,1);

if t_i++<t_c {
    timeline_position-=5;
}

