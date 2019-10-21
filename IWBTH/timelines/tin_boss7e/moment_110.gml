var dir=point_direction(x,y,Me.x,Me.y);
for(i=0;i<360;i+=7.5) {
    var j=instance_create(x,y,obj_bloodball);
    j.image_xscale=0.4; j.image_yscale=0.4;
    j.speed=5.5; j.direction=i+dir;
    j.image_alpha=1;
}

scp_shake(6,4,0);
scp_sfx(snd_charge,3);

