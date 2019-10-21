for(var i=0;i<360;i+=30){
    var j=instance_create(x,y-16,obj_flameball);
    with(j) {
        speed=3;
        direction=i;
        max_speed=6;
        get_speed=0.2;
        alarm[0]=70;
    }
}
repeat(2) scp_sfx(snd_magic,3);

