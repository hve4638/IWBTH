var i=image_xscale;
image_xscale=1;
repeat(i) {
    draw_self(); x+=32;
}

x-=32*i;
image_xscale=i;

