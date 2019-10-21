if fuse--<0 {
    if 0<n-- {
        var j, tx, ty;
        repeat(min(cnt-(pn-n),5)) {
            tx=irandom_range(s_x,e_x);
            ty=irandom_range(s_x,e_x);
            j=instance_create(tx,ty,obj_danmaku);
            j.sprite_index=spr_jellyfish;
            j.image_speed=0;
            j.direction=90;
            j.speed=32;
            j.life=50;
        }
        scp_shake(16,3,0);
    } else instance_destroy();
} else {
    with(sys_part){
        if ++prt[22]==0 event_user(0);
        part_emitter_region(Sys[22],emitter[22],other.s_x,other.e_x,other.s_y,other.e_y,1,0);
        part_emitter_burst(Sys[22],emitter[22],particle[22],other.cnt_pt);
    }
    pn=n;
}

