var i=instance_create(0,0,obj_water);
with(i) {image_xscale=1000; image_yscale=1000; depth=-20; image_alpha=0.5;}


with(obj_jellyfish) {
    if 2504<=x && x<=3080 {
        type=1;
        spd=4.5;
        direction=-90;
        tm=150;
        image_xscale=0.9;
        image_yscale=0.9;
        //y-=4;
    }
}