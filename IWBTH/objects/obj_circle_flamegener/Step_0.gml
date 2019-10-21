if I mod stime == 0 {
    var j=90;
    repeat(2) {
        var i=instance_create(x,y,obj_fireball);
        with(i) {
            direction=j; speed=-3.5;
            type=4;
            
            get_speed=0.05;
            min_speed=-5.5;
            max_speed=5.5;
            image_xscale=0.5;
            image_yscale=0.5;
            //hspeed=lengthdir_x(other.speed,other.direction);
            
            image_alpha=0.3;
            On=false;
            //del_block=false;
        }
        j+=180;
    }
    //scp_sfx(snd_blast,1);
}

scp_act_step();

I++;

