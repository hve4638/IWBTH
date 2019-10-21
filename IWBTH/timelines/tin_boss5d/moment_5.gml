for(var i=0;i<t_n;i++) {
    if t_arr[i] repeat(min(30-t_i,10)) {
        var j, tx, ty;
        tx=irandom_range((i+1)*64+6,(i+2)*64-6);
        ty=irandom_range(608-24,608+24);
        j=instance_create(tx,ty,obj_danmaku);
        j.sprite_index=spr_jellyfish;
        j.image_speed=0;
        j.direction=90;
        j.speed=32;
        j.life=50;
    }
}

scp_shake(16,3,0);
if t_i++ < 30 {
    timeline_position--;
} else event_user(0);

