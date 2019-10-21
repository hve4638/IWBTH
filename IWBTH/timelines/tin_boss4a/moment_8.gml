if t++<5 {
    var j=instance_create(x+image_xscale*32,y-16-31,obj_flameball);
    with (j) {
        alarm[0]=25; Del=true;
        direction=90+irandom_range(-15,15);
        speed=10;
        get_speed=-0.5;
        min_speed=7;
        type=2;
    } audio_play_sound(snd_magic,0,0);
    timeline_position-=2;
}


