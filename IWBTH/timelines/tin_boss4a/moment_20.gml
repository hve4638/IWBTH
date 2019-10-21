if i.y<380 {i.y+=48; timeline_position--;}
else {
    i.OnAfter=2;
    var j=instance_create(i.x,448,obj_charge);
    with(j) {
        image_alpha=0.9;
        get_xscale=0.75; get_yscale=0.015; get_alpha=-0.04;
        image_xscale=0.3; image_yscale=0.3; ktime=25;
        KILL=true;
    }
    scp_shake(8,4,0);
}

