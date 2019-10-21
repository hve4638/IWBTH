with (other) {
for(var i=0;i<=72;i++){
    var j=instance_create(x,y-16,obj_flameball);
    j.alarm[0]=1;
    j.alarm[1]=30;
    j.direction=i*5;
    j.speed=5;
}
for(var i=0;i<=10;i++){
    var j=instance_create(x,y-16,obj_flameball);
    with(j) {
        speed=3;
        direction=i*36;
        max_speed=5.5;
        get_speed=0.2;
        alarm[0]=60;
    }
}
repeat(4) audio_play_sound(snd_magic,0,0);

}
