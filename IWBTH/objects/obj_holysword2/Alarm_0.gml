with (obj_holysword) {
if OnAfter {
    var i=instance_create(x,y,obj_mirror);
    i.alpha=-0.1;
    i.sprite_index=sprite_index;
    i.image_index=1; i.image_speed=0;
    i.image_alpha=image_alpha;
    i.image_angle=image_angle;
    i.depth=depth;
    if OnAfter==2 {i.speed=8; i.direction=direction-90-180;}
}

alarm[0]=2;

}
