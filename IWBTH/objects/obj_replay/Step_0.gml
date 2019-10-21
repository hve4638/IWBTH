if rec_playing {    
    rec_pos+=rec_speed;
}

if ds_list_size(ds_x)-rec_pos<=10 {
    isdel=true;
}

if isdel {
    if 0<image_alpha image_alpha-=0.1;
    else instance_destroy();
} else image_alpha=min(1,image_alpha+0.1);

