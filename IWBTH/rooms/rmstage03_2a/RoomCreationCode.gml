var i=instance_create(0,0,obj_water);
with(i) {image_xscale=1000; image_yscale=1000; depth=-20; image_alpha=0.5;}

with(obj_spike) {
    if 640<x && x<1600 && 288<y && y<448 {image_yscale=-1; y+=32;}
}