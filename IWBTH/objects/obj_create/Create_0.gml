if !instance_exists(obj_player) && !instance_exists(obj_create_tpevent) {
    var i=instance_create(x,y,obj_player);
    i.xScale=image_xscale;
    i.image_yscale=image_yscale;
} else {
    if room==rmlastboss {
        with(obj_dimension) event_user(1);
        with(obj_dimensionstart) instance_destroy();
        with(sys_global) {vname=es("boss","dimension"); vtime=100;}
    }
}
instance_destroy();

