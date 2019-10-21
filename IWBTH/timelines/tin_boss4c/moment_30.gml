if t mod 2 {
    if irandom(1) {
        var j=instance_create(544,432-32*0,obj_fireball); with(j) {direction=180; speed=1;}
        var j=instance_create(544,432-32*3,obj_fireball); with(j) {direction=180; speed=1;}
    } else {
        var j=instance_create(544,432-32*0,obj_fireball); with(j) {direction=180; speed=1;}
        var j=instance_create(544,432-32*1,obj_fireball); with(j) {direction=180; speed=1;}
    }
} else {
    if irandom(1) {
        var j=instance_create(544,432-32*2,obj_fireball); with(j) {direction=180; speed=1;}
        var j=instance_create(544,432-32*1,obj_fireball); with(j) {direction=180; speed=1;}
    } else {
        var j=instance_create(544,432-32*3,obj_fireball); with(j) {direction=180; speed=1;}
        var j=instance_create(544,432-32*2,obj_fireball); with(j) {direction=180; speed=1;}
    }
}

with(obj_fireball) {
    image_index=1; get_alpha=0.1;
    get_speed=0.7; max_speed=16.5;
    type=-1; On=0; Del=true;
}

scp_shake(8,2,0);

j=instance_create(587-32,399,obj_charge);
with(j) {
    get_xscale=0.02; get_yscale=1; get_alpha=-0.08;
    image_xscale=0.3; image_yscale=1; ktime=15;
}

if t++<10 timeline_position-=15;
audio_play_sound(snd_magic,0,0);

