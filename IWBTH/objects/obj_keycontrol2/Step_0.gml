if 1<image_xscale {
    image_xscale-=0.1;
    image_yscale-=0.1;
} else {
    image_xscale-=0.01;
    image_yscale-=0.01;
    image_alpha+=0.05;
}

if image_xscale<0 {
    scp_kill();
    if 0<kid_hp {
        On=true;
        image_xscale=1;
        image_yscale=1;
        with(sys_cam) fade_set=0;
    } 
    else {
        On=false;
        image_alpha-=0.2;
    }
}
if image_xscale<-2 {
    instance_destroy();
    exit;
}

if On {
    i=0; j=0;
    repeat(6) { i++;
        if keyboard_check_pressed(48+i) {j=i; break;}
    }
    if j {
        if ds_list_find_value(d_t,0)==j {
            var k=instance_create(x,y,obj_charge);
            k.image_blend=c_blue; k.image_alpha=0.6;
            k.get_xscale=0.2; k.get_yscale=0.2;
            k.ktime=3;
            
            if image_xscale<1 {
                image_xscale=1;
                image_yscale=1;
            }
            with(sys_cam) fade_set=min(fade_set-0.3,0);
            
            audio_play_sound(snd_magic2,0,0);
            ds_list_delete(d_t,0);
            if ds_list_size(d_t)==0 {
                scp_shake(8,5,0);
                instance_destroy(); exit;
            } else scp_shake(1,1,0);
        } else {On=false;}
    }
} else {image_xscale-=0.1; image_yscale-=0.1;}




