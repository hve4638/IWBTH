var i, j;
i=0;
repeat(floor(image_xscale)) { j=0;
    repeat(floor(image_yscale)) {
        draw_sprite_ext(sprite_index,image_index,x+i*32,y+j*32,1,1,0,c_white,image_alpha);
        j++;
    } i++;
}

