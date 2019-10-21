with (other) {
//Holy
tt=(t mod 15);
if tt==5 {
    scp_shake(8,2,0);
    switch(irandom(3)) {
        case 1: {
            var j=instance_create(544,432-32*0,obj_fireball); with(j) {direction=180; speed=1;}
            var j=instance_create(544,432-32*3,obj_fireball); with(j) {direction=180; speed=1;}
        } break;
        case 2: {
            var j=instance_create(544,432-32*0,obj_fireball); with(j) {direction=180; speed=1;}
            var j=instance_create(544,432-32*1,obj_fireball); with(j) {direction=180; speed=1;}
        } break;
        case 3: {
            var j=instance_create(544,432-32*2,obj_fireball); with(j) {direction=180; speed=1;}
            var j=instance_create(544,432-32*1,obj_fireball); with(j) {direction=180; speed=1;}
        } break;
        case 0: {
            var j=instance_create(544,432-32*3,obj_fireball); with(j) {direction=180; speed=1;}
            var j=instance_create(544,432-32*2,obj_fireball); with(j) {direction=180; speed=1;}
        } break;
    }
    with(obj_fireball) {
        image_index=1; get_alpha=0.1;
        get_speed=0.4; max_speed=15;
        type=-1; On=0; Del=true;
    } audio_play_sound(snd_magic,0,0);
    j=instance_create(544,432-16*3,obj_charge);
    with(j) {
        get_xscale=0.02; get_yscale=0.6; get_alpha=-0.08;
        image_xscale=0.3; image_yscale=1; ktime=15;
    }    
}

//Death
tt=(t mod 30);
if tt<=2 {
    tx=Me.x;
} else if 2<tt && tt<15 {
    with(sys_part) {
        if ++prt[16]==0 event_user(0);
        part_emitter_region(Sys[16],emitter[16],other.tx-10,other.tx+10,432,448,1,1);
        part_emitter_burst(Sys[16],emitter[16],particle[16],20);
    }
} else if 20<=tt && tt<25 { scp_shake(10,2,0);
    var i=instance_create(tx,448,obj_laser);
    with(i) {image_angle=90; ar=3; ad=2; depth=-10;}
    
    i=instance_create(tx,448,obj_charge);
    with(i) {
        image_blend=c_black
        image_xscale=0.3;
        image_yscale=1.4;
        image_angle=90;
        get_xscale=0.025;
        get_yscale=0.1;
        get_alpha=-0.05;
        ktime=20; depth=-9;
    }
    audio_play_sound(snd_blast,0,0);
}

t++;
timeline_position--;

}
