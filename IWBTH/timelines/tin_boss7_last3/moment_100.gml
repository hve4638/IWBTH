if t_i<10 {
    var i=instance_create(0,300-32,obj_circle_flamegener);
    with(i) {
        image_alpha=0.3;
        direction=15+other.t_i;
        stime=8; speed=5;
        movdir=-0.1;
    }
    var i=instance_create(800,300-32,obj_circle_flamegener);
    with(i) {
        image_alpha=0.3;
        direction=180-15-other.t_i;
        stime=8; speed=5;
        movdir=0.1;
    }
}


if 1<t_i {
    repeat(5) {
        var i=instance_create(Me.x+irandom_range(-4,4),irandom_range(0,6),obj_fireball);
        with(i) {
            direction=270;
            speed=0;
            get_speed=0.04;
            max_speed=7;
            type=4;
            On=false;
            
            image_xscale=0.7;
            image_yscale=0.7;
        }
    }
}

onsnd=snd_shot; onsnd_delay=10;
if t_i++<11 timeline_position-=60;

