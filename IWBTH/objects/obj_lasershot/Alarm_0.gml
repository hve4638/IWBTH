var i=instance_create(x+lx div 2,y+ly div 2,obj_laser);
with(i) {image_angle=other.dir; ar=3; ad=2; depth=-10;}

i=instance_create(x+lx,y+ly,obj_charge);
with(i) {
    image_blend=c_black
    image_xscale=0.3;
    image_yscale=1.4;
    image_angle=other.dir;
    get_xscale=0.025;
    get_yscale=0.1;
    get_alpha=-0.05;
    ktime=20; depth=-9;
}
repeat(2) audio_play_sound(snd_blast,0,0);
scp_shake(16,4,0);

instance_destroy();

