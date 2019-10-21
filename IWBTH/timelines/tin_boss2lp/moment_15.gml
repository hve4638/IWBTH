var yy2=y-32;
audio_play_sound(snd_magic,0,0);

if ps mod 9 == 8 { ps++;
    ps2=choose(true,false);
    for(i=0;i<360;i+=360/17) {
        var j=instance_create(x,yy2,obj_fireball);
        j.On=0;
        j.direction=i+point_direction(x,yy2,obj_fakeplayer.x,obj_fakeplayer.y);
        j.speed=7;
        j.type=3;
    } repeat(4) audio_play_sound(snd_magic,0,0);
} else {
    for(i=0;i<5;i++) {
        var j=instance_create(x,yy2,obj_flameball);
        j.On=0;
        j.direction=ps*18+i*72+ps2*9;
        j.speed=5;
        j.type=3;
    }
    
    if ps mod 5 == 0 {
        var j=instance_create(x,yy2,obj_flameball);
        with(j) {
            speed=0.1;
            direction=point_direction(x,yy2,Me.x,Me.y);
            max_speed=7; get_speed=0.1;
            alarm[0]=10;
            type=3;
        }
    }
}

ps++;
timeline_position=1;

