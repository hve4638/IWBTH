if 1<t_i {
    repeat(5) {
        var i=instance_create(Me.x+irandom_range(-4,4),irandom_range(0,6),obj_fireball);
        with(i) {
            direction=270;
            speed=0;
            get_speed=0.04;
            max_speed=7;
            type=3;
            On=false;
            
            image_xscale=0.7;
            image_yscale=0.7;
        }
    }
}

