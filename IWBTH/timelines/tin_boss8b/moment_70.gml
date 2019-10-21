var j=instance_create(x-48,368-32*0,obj_fireball); with(j) {direction=180; speed=1;}
var j=instance_create(x-48,368-32*1,obj_fireball); with(j) {direction=180; speed=1;}
var j=instance_create(x-48,368-32*2,obj_fireball); with(j) {direction=180; speed=1;}
var j=instance_create(x-48,368-32*3,obj_fireball); with(j) {direction=180; speed=1;}


with(obj_fireball) {
    image_index=1; get_alpha=0.1;
    get_speed=0.7; max_speed=20;
    type=-1; On=0; Del=true;
}

scp_shake(8,2,0);

j=instance_create(x-22,y-10,obj_charge);
with(j) {
    get_xscale=0.02; get_yscale=1; get_alpha=-0.08;
    image_xscale=0.3; image_yscale=1; ktime=15;
}

repeat(2) scp_sfx(snd_magic,2);

