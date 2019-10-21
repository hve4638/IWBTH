/// @description laser
if 0<p_l {
    var c=make_colour_rgb(0,0,98);
    audio_play_sound(snd_blast,0,0);
    var i=instance_create(x+p_l*32,480,obj_laser);
    with(i) {image_angle=90; ar=4; ad=1; depth=-10; image_index = 2; image_blend=c_white;}
    var i=instance_create(x+p_l*32,480,obj_charge);
    with(i) {
        image_blend=c;
        image_xscale=0.3;
        image_yscale=0.8;
        image_angle=90;
        get_xscale=0.01;
        get_yscale=0.02;
        get_alpha=-0.05;
        ktime=20; depth=-19;
    }
    
    var i=instance_create(x-p_l*32,480,obj_laser);
    with(i) {image_angle=90; ar=4; ad=1; depth=-10; image_index = 2; image_blend=c_white;}
    var i=instance_create(x-p_l*32,480,obj_charge);
    with(i) {
        image_blend=c;
        image_xscale=0.3;
        image_yscale=0.8;
        image_angle=90;
        get_xscale=0.01;
        get_yscale=0.02;
        get_alpha=-0.05;
        ktime=20; depth=-19;
    }
    p_l--;
}

var j=irandom_range(1,4);
if phase==3 j=min(j,2);
var i=instance_create(x-10,y-j*16,obj_pwball);
i.xmov=-(7+j*2); i.nm=p_i;

var i=instance_create(x+10,y-j*16,obj_pwball);
i.xmov=7+j*2; i.nm=p_i;

if p_i++<p_k {
    timeline_position-=p_j;
}

