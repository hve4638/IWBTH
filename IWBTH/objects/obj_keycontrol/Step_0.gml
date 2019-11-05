if t<10 {
    image_xscale-=0.05;
    image_yscale-=0.05;
    image_alpha+=0.05
}
else if t==10 {
    On=1; room_speed=25;
    image_alpha=1;
}
else if t<lim {
    image_xscale-=0.03;
    image_yscale-=0.03;
}
else if t==lim {
    with(sys_camera) {fade_set=0; fade_get=0;}
    room_speed=50;
    image_xscale-=0.15;
    image_yscale-=0.15;
    if image_xscale<0 {
        On=false;
        scp_kill();
        image_alpha-=0.1;
    }
    if image_xscale<-2 {
        instance_destroy();
        exit;
    }
}

t=min(t+1,lim);

if On {
    i=0; j=0;
    repeat(4) { i++;
        if keyboard_check_pressed(48+i) {j=i; break;}
    }
    if j {
        if ds_list_find_value(d_t,0)==j {
            var k=instance_create(x,y,obj_charge);
            k.image_blend=c_blue; k.image_alpha=0.6;
            k.get_xscale=0.2; k.get_yscale=0.2;
            k.ktime=3;
            audio_play_sound(snd_magic2,0,0);
            ds_list_delete(d_t,0);
            if ds_list_size(d_t)==0 {
                scp_shake(8,5,0);
                instance_destroy(); exit;
            } else scp_shake(1,1,0);
        } else {t=lim; On=false;}
    }
}




