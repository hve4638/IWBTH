if !enable { enable=1;
    var col;
    var i=instance_create(x,y,obj_charge);
    switch(image_index) {
        case 1: col=c_red; break;
        case 2: col=c_blue; break;
        case 3: col=c_yellow; break;
        case 4: col=c_green; break;
        case 5: col=c_white; break;
        case 6: col=c_purple; break;
        default: col=c_white; break;
    }
    with(i) {
        image_xscale=0;
        image_yscale=0;
        image_blend=col;
        image_alpha=0.7;
        get_xscale=1.2;
        get_yscale=1.2;
        get_alpha=-0.01;
        ktime=50;
    }
}

