if t++<6 {
    audio_play_sound(snd_blast,0,0);
    scp_shake(64,3,1);
    timeline_position--;
} else {
    with(other) {
        i=instance_create(x,y,obj_charge);
        with(i) {
            image_blend=c_black
            image_xscale=0;
            image_yscale=0;
            image_angle=90;
            get_xscale=1;
            get_yscale=1;
            get_alpha=-0.01;
            ktime=30; depth=-20;
        }
    }
    scp_warmgener(30,x,y-15,Me,12,130,1.5);
    scp_warmgener(30,x,y,Me,12,180,1.5);
    scp_warmgener(30,x,y+15,Me,12,220,1.5);
    with(obj_darkwarm) depth=-5;
}

/*
    with(sys_part) {
        if ++prt[14]==0 event_user(0);
        part_type_color1(particle[14],c_black);
        part_type_blend(particle[14],0);
        part_emitter_region(Sys[14],emitter[14],other.x,other.x,other.y,other.y,ps_shape_ellipse,1);
        part_emitter_burst(Sys[14],emitter[14],particle[14],30);
    }

/* */
/*  */
