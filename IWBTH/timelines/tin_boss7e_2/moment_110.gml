var dir=point_direction(x,y,Me.x,Me.y);
for(i=0;i<360;i+=12) {
    var j=instance_create(x+32,y,obj_bloodball);
    j.image_xscale=1.2; j.image_yscale=1.2;
    j.direction=i+dir; j.speed=10;
    j.image_alpha=1;
}

scp_shake(6,3,0);
scp_sfx(snd_charge,3);

