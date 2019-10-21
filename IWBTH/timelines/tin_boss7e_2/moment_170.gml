for(i=0;i<360;i+=6) {
    var j=instance_create(x,y,obj_bloodball);
    j.image_xscale=0.4; j.image_yscale=0.4;
    j.speed=5; j.direction=i;
    j.image_alpha=1;
}


scp_shake(4,3,0);
scp_sfx(snd_charge,3);

