if !instance_exists(pn) {
    if k {
        gravity=0.25;
        gravity_direction=270;
        k=false;
    }
    x+=ax;
} else {
    if x!=px {
        ax=x-px;
        px=x;
    }
    x=pn.x;
    y=pn.y;
}
image_angle+=movang;

