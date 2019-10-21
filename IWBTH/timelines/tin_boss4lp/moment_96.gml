if t++<25 {
    repeat(3) {
        var j=instance_create(i.x,i.y+irandom_range(-16,16),obj_fireball);
        with (j) {
            Del=false; On=0;
            direction=90+irandom_range(-5,5);
            speed=10;
            get_speed=0.5;
            max_speed=15;
            type=2;
        }
    } audio_play_sound(snd_magic,0,0);
} if 20<t && t<60 {
    var j=instance_create(irandom_range(32,640),4,obj_fireball);
    with(j) {
        image_index=1; get_alpha=0.1;
        get_speed=0.3; max_speed=32;
        speed=5;
        direction=270+irandom_range(-3,3);
        type=-1; On=0; Del=true;
    }
}
if t<90 {timeline_position--;} else {t=0;}

