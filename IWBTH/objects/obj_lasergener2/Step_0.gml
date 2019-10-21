if t<FUSE {
    with(sys_part) {
        if ++prt[16]==0 event_user(0);
        part_type_color1(particle[16],128);
        part_system_depth(Sys[16],1);
        part_emitter_region(Sys[16],emitter[16],other.x-9,other.x+9,other.y-4,other.y,1,1);
        part_emitter_burst(Sys[16],emitter[16],particle[16],5);
    }
}
else if t==FUSE {
    var i=instance_create(x,448-32,obj_laser);
    with(i) {image_angle=90; ar=3; ad=2; depth=-20; image_index=1; image_blend=c_white;}
    
    i=instance_create(x,448-32,obj_charge);
    with(i) {
        image_blend=128;
        image_xscale=0.3;
        image_yscale=1.4;
        image_angle=90;
        get_xscale=0.025;
        get_yscale=0.05;
        get_alpha=-0.05;
        ktime=20; depth=-20;
    }
    
    if snd!=noone scp_sfx(snd,3);
    instance_destroy();
}

t++;

