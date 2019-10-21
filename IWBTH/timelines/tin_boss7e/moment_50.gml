var dir=point_direction(x,y,Me.x,Me.y);
for(i=0;i<360;i+=15) {
    var j=instance_create(x,y,obj_bloodball);
    j.image_xscale=0.8; j.image_yscale=0.8;
    j.direction=dir+i; j.speed=7;
    j.image_alpha=1;
}

scp_shake(6,4,0);
scp_sfx(snd_charge,3);

