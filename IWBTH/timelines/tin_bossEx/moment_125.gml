if t_j++ mod 2 == 0 {
    t_dir=point_direction(sx,sy,Me.x,Me.y);
    for(var i=0;i<16;i++) {
        var t=instance_create(sx,sy,obj_danmaku);
        t.sprite_index=spr_danmaku_3;
        t.image_index=1;
        t.speed=5;
        t.direction=t_dir+i*360/16;
        t.angledir=true;
    }
}


if t_i++<1000 {
    timeline_position--;
}

