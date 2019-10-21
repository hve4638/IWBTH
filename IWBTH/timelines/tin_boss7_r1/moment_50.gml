//audio_play_sound(snd_magic2,0,0);
for(i=0;i<360;i+=30) {
    var j=instance_create(160,128,obj_bloodball);
    with(j) {
        direction=other.i+other.t_i*12;
        speed=5;
        image_alpha=0.5;
        image_xscale=0.9;
        image_yscale=0.9;
    }
    
    var j=instance_create(800-160,128,obj_bloodball);
    with(j) {
        direction=other.i+other.t_i*12;
        speed=5;
        image_alpha=0.5;
        image_xscale=0.9;
        image_yscale=0.9
    }
}


if t_i++<20 {
    timeline_position-=30;
}

