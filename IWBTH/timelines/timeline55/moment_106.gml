with(obj_water) y+=2;

if t_i++<55+28 {
    timeline_position--;
} else {
    t_i=0;    
    var i=instance_create(-32,0,obj_block);
    i.image_xscale=1; i.image_yscale=14;
    
    var i=instance_create(0,448,obj_block);
    i.image_xscale=25; i.image_yscale=5;
    
    var i=instance_create(800,0,obj_block);
    i.image_xscale=1; i.image_yscale=14;
    with(obj_beam) instance_destroy();
}

