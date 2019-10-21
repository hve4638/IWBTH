var i=instance_create(tx,448,obj_laser);
with(i) {image_angle=90; ar=3; ad=2; depth=-10;}

scp_shake(16,3,0);

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
if t++<3 timeline_position--;
else {
    if t2++<=3 {
        var tk=clamp(tx+irandom_range(-256,256),32,550-32);
        scp_warmgener(20,tk,0,Me,8,270,1.2);
        if t2 mod 2 scp_warmgener(20,tk+200,0,Me,8,270,1.2);
        with(obj_darkwarm) {BT=1;}
        timeline_position=5;
    }
    else {OnEffect=0;}
}

