/// @description Hit
if onhealth && !inv {
    audio_play_sound(snd_BossHit,0,0);
    with(other) {instance_destroy();}
    HP-=DEAL*ARMOR;
    event_user(2);
    
    if phase==1 {
        var i=instance_create(x,y,obj_charge);
        with(i) {
            ktime=10;
            get_xscale=0.2;
            get_yscale=0.2;
            get_alpha=-0.1;
            image_blend=c_black;
        }
    }
    if SHIELD {
        while(instance_exists(obj_bullet)) {
            var i=instance_nearest(x,y,obj_bullet);
            if point_distance(x,y,i.x,i.y)<196 with(i) instance_destroy();
            else break;
        }
    }
}

