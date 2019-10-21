if OnAfter {
    var i=instance_create(x,y,obj_mirror);
    i.KILL=1;
    i.alpha=-0.03;
    i.sprite_index=sprite_index;
    i.image_index=0;
    i.image_speed=0;
    i.image_alpha=image_alpha*4/5;
    i.image_angle=image_angle;
    i.image_xscale=image_xscale;
    i.image_yscale=image_yscale;
    i.depth=depth-1;
} alarm[0]=3;

