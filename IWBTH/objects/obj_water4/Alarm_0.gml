if place_free(x,y+32) {
    if !place_meeting(x,y+32,obj_water) {
        var i=instance_create(x,y+32,obj_water4);
        i.image_xscale=image_xscale;
        i.image_alpha=image_alpha;
    } else if place_meeting(x,y+32,obj_water3) && 0 {
        var ta=1;
        with(collision_rectangle(x,y+33,x+31,y+63,obj_water3,0,0)) {
            ta=image_alpha;
            instance_destroy();
        }
    }
}

if !orn alarm[1]=4;

