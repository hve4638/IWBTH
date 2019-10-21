var lx, ly;
for(var i=0;i<360;i+=40) {
    lx=x+lengthdir_x(bb_dis,bb_dir+i);
    ly=y+lengthdir_y(bb_dis,bb_dir+i);
    
    var j=instance_create(lx,ly,obj_danmaku);
    with(j) {
        sprite_index=spr_waterball;
        image_alpha=0.25;
        tag[0]=1;
        tag[1]=other.t_j;
        tag[2]=i;
    }
    t_j++;
    repeat(3) scp_sfx(snd_bubble,3);
}

