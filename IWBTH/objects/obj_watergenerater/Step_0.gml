if preswch!=SWITCH[0] {
    if ison==SWITCH[0] {
        var i=instance_create(x,y,obj_water4);
        i.orn=1; i.image_alpha=0.5;
    } else {
        with(collision_rectangle(x+1,y+1,x+31,y+31,obj_water4,0,0)) instance_destroy();
    }
}
preswch=SWITCH[0];

