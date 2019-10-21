if T {
    var j=instance_create(tx,ty,obj_lasergener);
    with(j) {
        ry=-64-128*2; gy=64;
        dir=65; angle=12;
        arm=3; life=7;
        ar=3;
    }
} else {
    var j=instance_create(tx,ty,obj_lasergener);
    with(j) {
        rx=64+128*2; gx=-72;
        dir=10; angle=-8;
        arm=3; life=7;
        ar=3;
    }
}

