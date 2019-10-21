repeat(2) {
    for(var i=0;i<4;i++) {
        var t;
        var lx, ly;
        lx=lengthdir_x(i*24,t_dir);
        ly=lengthdir_y(i*24,t_dir);
        t=instance_create(sx,sy,obj_danmaku);
        t.speed=i*2+4;
        t.direction=t_dir;
        t.sprite_index=spr_danmaku_3;
        t.image_index=0;
        t.angledir=true;
        t.movspd=-0.5;
    } t_dir+=36/5;
}

if t_i++<25 {
    timeline_position-=1;
}

